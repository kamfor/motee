#include "../include/mainwindow.h"
#include "ui_mainwindow.h"
#include "../include/console.h"
#include "../include/settingsdialog.h"
#include "../include/readthread.h"

#include <QMessageBox>
#include <QLabel>
#include <QGroupBox>
#include <QPushButton>
#include <QDialogButtonBox>
#include <QFileDialog>
#include <QDataStream>
#include <QFile>
#include <QSpacerItem>
#include <QVector>
#include <QDebug>
#include <QScreen>
#include <QMetaEnum>
#include <QColorDialog>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow){

    ui->setupUi(this);

    console = new Console;
    serial = new QSerialPort(this);
    settings = new SettingsDialog;
    filedata = new QVector<QByteArray>;
    customPlot = new QCustomPlot(this);
    status = new QLabel;
    devicesList = new QComboBox();
    address = new QComboBox;
    groupAddress = new QComboBox;
    devicesParams = new QVector<motee>;
    devicesParams->resize(256);

    defaultMotee.address = 0;
    defaultMotee.groupAddress = 0;
    defaultMotee.maxSpeed = 1000;
    defaultMotee.kp = 50;
    defaultMotee.kd = 0;
    defaultMotee.ki = 100;
    setSpeed = 0;

    for(int i=0; i<256; i++){
        devicesParams->push_back(defaultMotee);
    }

    speedLabel = new QLabel("Speed:", this);
    maxSpeedLabel = new QLabel("MaxSpeed:", this);
    kpLabel = new QLabel("Kp:", this);
    kdLabel = new QLabel("Kd:", this);
    kiLabel = new QLabel("Ki:", this);
    driveParameters[0] = new QSlider(Qt::Horizontal,this);
    driveParameters[1] = new QSlider(Qt::Horizontal,this);
    driveParameters[2] = new QSlider(Qt::Horizontal,this);
    driveParameters[3] = new QSlider(Qt::Horizontal,this);
    driveParameters[4] = new QSlider(Qt::Horizontal,this);

    ui->statusBar->addWidget(status);

    createLayouts();
    initActionsConnections();
    generatePlot();
    connectActions();

    buttons[0]->setEnabled(true);
    buttons[1]->setEnabled(true);
    buttons[2]->setEnabled(true);
    buttons[3]->setEnabled(true);
    buttons[4]->setEnabled(false);
    buttons[5]->setEnabled(false);
    buttons[6]->setEnabled(false);

    console->setEnabled(false);
    autoscale = true;
    changePlotCaption();

    newAddres = false;
    newMaxSpeed = false;
    newKp = false;
    newKd = false;
    newKi = false;

    connect(serial, static_cast<void (QSerialPort::*)(QSerialPort::SerialPortError)>(&QSerialPort::error),this, &MainWindow::handleError);
    connect(serial, &QSerialPort::readyRead, this, &MainWindow::readData);
    connect(console, &Console::getData, this, &MainWindow::writeData);
}

MainWindow::~MainWindow(){
    delete settings;
    delete serial;
    delete filedata;
    delete console;
    delete ui;
    delete customPlot;
}

void MainWindow::openSerialPort(){
    SettingsDialog::Settings p = settings->settings();
    serial->setPortName(p.name);
    serial->setBaudRate(p.baudRate);
    serial->setDataBits(p.dataBits);
    serial->setParity(p.parity);
    serial->setStopBits(p.stopBits);
    serial->setFlowControl(p.flowControl);
    if (serial->open(QIODevice::ReadWrite)) {
        console->setEnabled(true);
        buttons[0]->setEnabled(false);
        buttons[1]->setEnabled(false);
        buttons[2]->setEnabled(true);
        buttons[4]->setEnabled(true);
        buttons[5]->setEnabled(true);
        buttons[6]->setEnabled(true);
        serial->setReadBufferSize(8);
        showStatusMessage(tr("Connected to %1 : %2, %3, %4, %5, %6")
                          .arg(p.name).arg(p.stringBaudRate).arg(p.stringDataBits)
                          .arg(p.stringParity).arg(p.stringStopBits).arg(p.stringFlowControl));
    } else {
        QMessageBox::critical(this, tr("Error"), serial->errorString());

        showStatusMessage(tr("Open error"));
    }
}

void MainWindow::closeSerialPort(){
    if (serial->isOpen())
        serial->close();
    console->setEnabled(false);
    buttons[0]->setEnabled(true);
    buttons[1]->setEnabled(true);
    buttons[2]->setEnabled(false);
    buttons[4]->setEnabled(false);
    buttons[5]->setEnabled(false);
    buttons[6]->setEnabled(false);
    showStatusMessage(tr("Disconnected"));
}

void MainWindow::about(){

    QMessageBox::about(this, tr("O programie"),
                       tr("Serial Receiver to prosty program bazujązy na bibliotece Qt \n"
                          "umożliwia odbieranie i analize dancych z portu szeregowego \n"
                          "Skróty klawiaturowe : \n"
                          "ctrl + - zwiększenie skali wykresu, \n"
                          "ctrl - - zmniejszenie skali wykresu, \n"
                          "ctrl p - zapis wykresu do pliku, \n"
                          "ctrl s - zapis danych z konsoli do pliku"));
}

void MainWindow::openSettings(){

    settings->show();
}


void MainWindow::clearConsole(){

    console->clear();
    filedata->clear();
}

void MainWindow::writeData(const QByteArray &data){

    serial->write(data);
}

void MainWindow::readData(){

    while(serial->waitForReadyRead(1));
    QByteArray data = serial->readAll();
    serial->flush();
    console->putData(data.toHex());
    dataInterpreter(data);
}

void MainWindow::dataInterpreter(QByteArray data){

    int functionId = data.at(0);
    int actSpeed;
    int current;
    int direction;
    int incommingAddr;
    int groupAddr;
    switch (functionId){
    case 0:
        //if (data.at(1)==actualSelectedDrive); display only selected device
        actSpeed  = from8to16(data.at(2), data.at(3));
        current  = from8to16(data.at(5), data.at(6));
        direction = data.at(4);
        if(direction==1){
            actSpeed = -1*actSpeed;
            current = -1*current;
        }
        realtimeDataSlot(actSpeed*20,setSpeed,current);
        qDebug() << actSpeed << current << direction;
    break;
    case 1:
        incommingAddr = data.at(1);
        groupAddr = data.at(2);
        if(devicesParams->at(incommingAddr).address==0){
            motee temp;
            temp.address = incommingAddr;
            temp.groupAddress = groupAddr;
            temp.maxSpeed = defaultMotee.maxSpeed;
            temp.kp = defaultMotee.kp;
            temp.kd = defaultMotee.kd;
            temp.ki = defaultMotee.ki;
            this->devicesParams->replace(incommingAddr,temp);
            this->devicesList->addItem(QString::number(incommingAddr)+"_"+QString::number(groupAddr),QVariant(incommingAddr));
        }
    break;
    }
}


void MainWindow::handleError(QSerialPort::SerialPortError error){

    if (error == QSerialPort::ResourceError) {
        QMessageBox::critical(this, tr("Critical Error"), serial->errorString());
        closeSerialPort();
    }
}

void MainWindow::initActionsConnections(){

    connect(buttons[0], SIGNAL (released()), this, SLOT (openSettings()));
    connect(buttons[1], SIGNAL (released()), this, SLOT (openSerialPort()));
    connect(buttons[2], SIGNAL (released()), this, SLOT (closeSerialPort()));
    connect(buttons[3], SIGNAL (released()), this, SLOT (clearConsole()));
    connect(buttons[4], SIGNAL (released()), this, SLOT (findDevices()));
    connect(buttons[5], SIGNAL (released()), this, SLOT (sendFrame()));
    connect(buttons[6], SIGNAL (released()), this, SLOT (resetParameters()));
    connect(ui->actionExit, &QAction::triggered, this, &MainWindow::close);
    connect(ui->actionAbout, &QAction::triggered, this, &MainWindow::about);
    connect(ui->actionSave, &QAction::triggered, this, &MainWindow::saveFile);
    connect(ui->actionAuto_scale_on, &QAction::triggered, this, &MainWindow::changePlotCaption);
    connect(ui->actionZoom, &QAction::triggered, this, &MainWindow::extendPlotScale);
    connect(ui->actionZoom_2, &QAction::triggered, this, &MainWindow::dropPlotScale);
    connect(ui->actionSave_Polt, &QAction::triggered, this, &MainWindow::savePlot);
    connect(ui->actionSet_Color, &QAction::triggered, this, &MainWindow::setPlotColor);
    connect(driveParameters[0], SIGNAL(valueChanged(int)), this, SLOT(speedChanged(int)));
    connect(driveParameters[1], SIGNAL(valueChanged(int)), this, SLOT(maxSpeedChanged(int)));
    connect(driveParameters[2], SIGNAL(valueChanged(int)), this, SLOT(kpChanged(int)));
    connect(driveParameters[3], SIGNAL(valueChanged(int)), this, SLOT(kdChanged(int)));
    connect(driveParameters[4], SIGNAL(valueChanged(int)), this, SLOT(kiChanged(int)));
    connect(devicesList , SIGNAL(currentIndexChanged(int)),this, SLOT(changeCurrentDevice(int)));
    connect(address , SIGNAL(currentIndexChanged(int)),this, SLOT(addressChanged()));
    connect(groupAddress , SIGNAL(currentIndexChanged(int)),this, SLOT(addressChanged()));
}

void MainWindow::showStatusMessage(const QString &message){

    status->setText(message);
}

void MainWindow::createLayouts(){

    buttonBox = new QGroupBox(tr("Menu"));
    QHBoxLayout *layout = new QHBoxLayout;
    buttons[0] = new QPushButton("Settings",this);
    layout->addWidget(buttons[0]);
    buttons[1] = new QPushButton("Connect",this);
    layout->addWidget(buttons[1]);
    buttons[2] = new QPushButton("Disconnect",this);
    layout->addWidget(buttons[2]);
    buttons[3] = new QPushButton("Clear",this);
    layout->addWidget(buttons[3]);
    buttonBox->setLayout(layout);

    driveParameters[0]->setRange(-1000,1000);
    driveParameters[1]->setRange(0,1000);
    driveParameters[1]->setValue(1000);
    driveParameters[2]->setRange(0,1000);
    driveParameters[2]->setValue(500);
    driveParameters[3]->setRange(0,1000);
    driveParameters[4]->setRange(0,1000);
    driveParameters[4]->setValue(100);

    QVBoxLayout *centerLayout = new QVBoxLayout;
    QHBoxLayout *paramsLayout = new QHBoxLayout;
    QVBoxLayout *labelsLayout = new QVBoxLayout;
    QVBoxLayout *slidersLayout = new QVBoxLayout;
    QHBoxLayout *addressLayout = new QHBoxLayout;

    labelsLayout->addWidget(speedLabel);
    labelsLayout->addWidget(maxSpeedLabel);
    labelsLayout->addWidget(kpLabel);
    labelsLayout->addWidget(kdLabel);
    labelsLayout->addWidget(kiLabel);
    labelsLayout->addStrut(110);

    slidersLayout->addWidget(driveParameters[0]);
    slidersLayout->addWidget(driveParameters[1]);
    slidersLayout->addWidget(driveParameters[2]);
    slidersLayout->addWidget(driveParameters[3]);
    slidersLayout->addWidget(driveParameters[4]);

    paramsLayout->addLayout(labelsLayout);
    paramsLayout->addLayout(slidersLayout);

    addressLayout->addWidget(new QLabel("Address:",this));
    addressLayout->addWidget(address);
    addressLayout->addWidget(new QLabel("Group address:",this));
    addressLayout->addWidget(groupAddress);
    this->fillAddress();

    centerLayout->addLayout(paramsLayout);
    centerLayout->addLayout(addressLayout);

    buttons[4] = new QPushButton("Find",this);
    buttons[5] = new QPushButton("Set",this);
    buttons[6] = new QPushButton("Reset",this);
    QGroupBox *devList = new QGroupBox("Devices List:",this);
    QHBoxLayout *devListLayout = new QHBoxLayout;
    devListLayout->addWidget(devicesList);
    devList->setLayout(devListLayout);
    centerLayout->addWidget(devList);
    centerLayout->addWidget(buttons[4]);
    centerLayout->addWidget(buttons[5]);
    centerLayout->addWidget(buttons[6]);
    centerLayout->addSpacerItem(new QSpacerItem(500,1));

    QGroupBox *left = new QGroupBox(tr("Console"));
    QSizePolicy spLeft(QSizePolicy::Maximum, QSizePolicy::Minimum);
    spLeft.setVerticalStretch(2);
    left->setSizePolicy(spLeft);
    QVBoxLayout *leftlayout = new QVBoxLayout;
    leftlayout->addWidget(console);
    leftlayout->addWidget(buttonBox);
    left->setLayout(leftlayout);

    QGroupBox *center = new QGroupBox(tr("Control"));
    QSizePolicy spCenter(QSizePolicy::Maximum, QSizePolicy::Maximum);
    spCenter.setVerticalStretch(5);
    center->setSizePolicy(spCenter);
    center->setLayout(centerLayout);

    QGroupBox *right = new QGroupBox(tr("Plot"));
    QSizePolicy spRight(QSizePolicy::Expanding, QSizePolicy::Expanding);
    spRight.setVerticalStretch(2);
    right->setSizePolicy(spRight);
    QVBoxLayout *rightlayout = new QVBoxLayout;
    rightlayout->addSpacerItem(new QSpacerItem(600,1));
    rightlayout->addWidget(customPlot,1000);
    right->setLayout(rightlayout);


    QHBoxLayout *mainLayout = new QHBoxLayout;
    mainLayout->addWidget(left);
    mainLayout->addWidget(center);
    mainLayout->addWidget(right);
    QWidget *mainWidget = new QWidget;

    mainWidget->setLayout(mainLayout);
    setCentralWidget(mainWidget);
    setWindowTitle(tr("Motion Controller"));
}

void MainWindow::saveFile(){

    QString filename = QFileDialog::getSaveFileName(this,tr("Save File"),tr(""),tr("Text Files(*.txt)"));
    QFile file(filename);
    if (!file.open(QIODevice::WriteOnly|QIODevice::Text)){

        QMessageBox::warning(0,"Could not create File",
        QObject::tr( "\n Could not create File on disk"));
    }
    for(int i=0; i<filedata->size();i++){
            file.write(filedata->at(i));
    }
    file.close();
}

void MainWindow::generatePlot(){

  customPlot->addGraph(); // blue line
  customPlot->graph(0)->setPen(QPen(Qt::blue));
  //customPlot->graph(0)->setBrush(QBrush(QColor(240, 255, 200)));
  //customPlot->graph(0)->setAntialiasedFill(false);
  //customPlot->addGraph(); // red line
  //customPlot->graph(1)->setPen(QPen(Qt::red));
  //customPlot->graph(0)->setChannelFillGraph(customPlot->graph(1));

  customPlot->addGraph(); // red line
  customPlot->graph(1)->setPen(QPen(Qt::red));

  customPlot->addGraph(); // red line
  customPlot->graph(2)->setPen(QPen(Qt::green));


  customPlot->xAxis->setTickLabelType(QCPAxis::ltDateTime);
  customPlot->xAxis->setDateTimeFormat("hh:mm:ss");
  customPlot->xAxis->setAutoTickStep(false);
  customPlot->xAxis->setTickStep(2);
  customPlot->axisRect()->setupFullAxesBox();

  // make left and bottom axes transfer their ranges to right and top axes:
  connect(customPlot->xAxis, SIGNAL(rangeChanged(QCPRange)), customPlot->xAxis2, SLOT(setRange(QCPRange)));
  connect(customPlot->yAxis, SIGNAL(rangeChanged(QCPRange)), customPlot->yAxis2, SLOT(setRange(QCPRange)));

  customPlot->replot();
}

void MainWindow::realtimeDataSlot(int speed, int setPoint, int current){

    double key = QDateTime::currentDateTime().toMSecsSinceEpoch()/1000.0;

    double value0 = (double)speed;
    double value1 = (double)setPoint;
    double value2 = (double)current;

    static double lastPointKey = 0;
    if (key-lastPointKey > 0.02) // at most add point every 10 ms
    {
      // add data to lines:
      customPlot->graph(0)->addData(key,value0);
      customPlot->graph(1)->addData(key, value1);
      customPlot->graph(2)->addData(key, value2);
      // remove data of lines that's outside visible range:
      customPlot->graph(0)->removeDataBefore(key-8);
      customPlot->graph(1)->removeDataBefore(key-8);
      customPlot->graph(2)->removeDataBefore(key-8);
      // rescale value (vertical) axis to fit the current data:
      if (autoscale){
          customPlot->graph(0)->rescaleValueAxis();
      }
      customPlot->graph(1)->rescaleValueAxis(true);
      lastPointKey = key;
    }
    // make key axis range scroll with the data (at a constant range size of 8):
    customPlot->xAxis->setRange(key+0.25, 8, Qt::AlignRight);
    customPlot->replot();
}

void MainWindow::changePlotCaption(){

    if(autoscale){
        autoscale = false;
        ui->actionAuto_scale_on->setText("Auto scale on");
    }
    else{
        autoscale = true;
        ui->actionAuto_scale_on->setText("Auto scale off");
    }
}

void MainWindow::extendPlotScale(){

    if(autoscale == false){
        customPlot->yAxis->setRange(0,customPlot->yAxis->range().upper);
        customPlot->yAxis->setRange(customPlot->yAxis->range()*2);
        customPlot->replot();
    }
}

void MainWindow::dropPlotScale(){

    if(autoscale == false){
        customPlot->yAxis->setRange(0,customPlot->yAxis->range().upper);
        customPlot->yAxis->setRange(customPlot->yAxis->range()/2);
        customPlot->replot();
    }
}

void MainWindow::savePlot(){

    QString filename = QFileDialog::getSaveFileName(this,tr("Save Plot"),tr(""),tr("(*.png)"));
    QFile file(filename);
    if (!file.open(QIODevice::WriteOnly|QFile::WriteOnly)){
        QMessageBox::warning(0,"Could not create File",
        QObject::tr( "\n Could not create File on disk"));
    }
    customPlot->savePng(filename,  0, 0, 1.0, -1  );
}

void MainWindow::connectActions(){
    ctrlplus = new QAction(this);
    ctrlminus = new QAction(this);
    ctrls = new QAction(this);
    ctrlp = new QAction(this);

    ctrlplus->setShortcut(QKeySequence::ZoomIn);
    ctrlminus->setShortcut(QKeySequence::ZoomOut);
    ctrls->setShortcut(QKeySequence::Save);
    ctrlp->setShortcut(QKeySequence::Print);

    connect(ctrlplus, SIGNAL(triggered()), this, SLOT(extendPlotScale()));
    connect(ctrlminus, SIGNAL(triggered()), this, SLOT(dropPlotScale()));
    connect(ctrls, SIGNAL(triggered()), this, SLOT(saveFile()));
    connect(ctrlp, SIGNAL(triggered()), this, SLOT(savePlot()));

    this->addAction(ctrlplus);
    this->addAction(ctrlminus);
    this->addAction(ctrls);
    this->addAction(ctrlp);
}

void MainWindow::setPlotColor(){

    QColor plotColor;
    plotColor = QColorDialog::getColor(Qt::red, this);
    customPlot->graph(0)->setPen(QPen(plotColor));
    customPlot->graph(1)->setPen(QPen(plotColor));
}

void MainWindow::speedChanged(int s){
    this->speedLabel->setText("Speed: " + QString::number(s));
    setSpeed = s;
    QByteArray txBuffer;
    uint16_t speed = (uint16_t)abs(s);
    txBuffer.resize(8);
    txBuffer[0] = 2;
    txBuffer[1] = devicesParams->at(currentMotee).address; //selected device address
    txBuffer[2] = devicesParams->at(currentMotee).groupAddress; //selected group address
    txBuffer[3] = (uint8_t)(speed>>8);
    txBuffer[4] = (uint8_t)speed;

    if(s>=0){
        txBuffer[5] = 0;
    }
    else txBuffer[5] = 1;
    txBuffer[6] = 0;
    txBuffer[7] = 0;
    serial->write(txBuffer);
    while(serial->waitForBytesWritten(5));
    console->putData(txBuffer.toHex());
}

void MainWindow::maxSpeedChanged(int s){
    this->maxSpeedLabel->setText("maxSpeed: " + QString::number(s));
    this->newMaxSpeed = true;
}

void MainWindow::kpChanged(int s){
    this->kpLabel->setText("Kp: " + QString::number(s/10));
    this->newKp = true;
}

void MainWindow::kdChanged(int s){
    this->kdLabel->setText("Ki: " + QString::number(s/10));
    this->newKd = true;
}

void MainWindow::kiChanged(int s){
    this->kiLabel->setText("Kd: " + QString::number(s/10));
    this->newKi = true;
}

void MainWindow::addressChanged(){
    this->newAddres = true;
}


void MainWindow::fillAddress(){

    for(int i=0; i<32; i++){
        this->address->addItem(QString::number(i),QVariant(i));
        this->groupAddress->addItem(QString::number(i),QVariant(i));
    }
}

void MainWindow::findDevices(){
    QByteArray txBuffer;
    txBuffer.resize(8);
    txBuffer[0] = 1;
    txBuffer[1] = 0; // broadcast
    serial->write(txBuffer);
    while(serial->waitForBytesWritten(5));
    console->putData(txBuffer.toHex());
}

void MainWindow::sendFrame(){ //disable if parameters didn't chanched

    QByteArray txBuffer;
    txBuffer.resize(8);
    uint16_t userValue=0;

    txBuffer[1] = devicesParams->at(currentMotee).address; //selected device address
    txBuffer[2] = devicesParams->at(currentMotee).groupAddress; //selected group address
    txBuffer[5] = 0;
    txBuffer[6] = 0;
    txBuffer[7] = 0;

    if(newAddres){

        txBuffer[0] = 3;
        txBuffer[3] = (uint8_t)address->currentIndex();
        txBuffer[4] = (uint8_t)groupAddress->currentIndex();
        this->newAddres=false;
    }
     else if(newMaxSpeed){
        userValue = driveParameters[1]->value();
        txBuffer[3] = (uint8_t)(userValue>>8);
        txBuffer[4] = (uint8_t)userValue;
        txBuffer[0] = 4;
        this->newMaxSpeed=false;
    }
    else if(newKp){
        userValue = driveParameters[2]->value();
        txBuffer[3] = (uint8_t)(userValue>>8);
        txBuffer[4] = (uint8_t)userValue;
        txBuffer[0] = 5;
         this->newKp=false;
    }
    else if(newKd){
        userValue = driveParameters[3]->value();
        txBuffer[3] = (uint8_t)(userValue>>8);
        txBuffer[4] = (uint8_t)userValue;
        txBuffer[0] = 6;
        this->newKd=false;
    }
    else if(newKi){
        userValue = driveParameters[4]->value();
        txBuffer[3] = (uint8_t)(userValue>>8);
        txBuffer[4] = (uint8_t)userValue;
        txBuffer[0] = 7;
        this->newKi=false;
    }

    serial->write(txBuffer);
    while(serial->waitForBytesWritten(5));
    console->putData(txBuffer.toHex());
}

void MainWindow::resetParameters(){
    this->driveParameters[0]->setValue(0);
    this->driveParameters[1]->setValue(1000);
    this->driveParameters[2]->setValue(500);
    this->driveParameters[3]->setValue(10);
    this->driveParameters[4]->setValue(20);
    this->address->setCurrentIndex(0);
    this->groupAddress->setCurrentIndex(0);
}

int MainWindow::from8to16(uint8_t H, uint8_t L){

    return   H*256 + L;
}

void MainWindow::changeCurrentDevice(int variant){
    currentMotee = devicesList->currentData().toInt();
    qDebug() << devicesParams->at(currentMotee).address;
    qDebug() << variant;
    this->driveParameters[1]->setValue(devicesParams->at(currentMotee).maxSpeed);
    this->driveParameters[2]->setValue(devicesParams->at(currentMotee).kp);
    this->driveParameters[3]->setValue(devicesParams->at(currentMotee).kd);
    this->driveParameters[4]->setValue(devicesParams->at(currentMotee).ki);
    this->address->setCurrentIndex(devicesParams->at(currentMotee).address);
    this->groupAddress->setCurrentIndex(devicesParams->at(currentMotee).groupAddress);
}
