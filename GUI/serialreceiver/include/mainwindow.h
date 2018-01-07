#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QtCore/QtGlobal>
#include <QMainWindow>
#include <QtSerialPort/QSerialPort>
#include <QVector>
#include <QAction>
#include "../plots/qcustomplot.h"

QT_BEGIN_NAMESPACE

class QLabel;
class QGroupBox;
class QPushButton;

namespace Ui {
class MainWindow;
}

QT_END_NAMESPACE

class Console;
class SettingsDialog;
class Plot;

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:

    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:

    void openSerialPort();
    void closeSerialPort();
    void openSettings();
    void clearConsole();
    void about();
    void writeData(const QByteArray &data); //write data to specified address
    void readData();
    void handleError(QSerialPort::SerialPortError error);
    void saveFile();
    void realtimeDataSlot(int, int);
    void changePlotCaption();
    void savePlot();
    void extendPlotScale();
    void dropPlotScale();
    void setPlotColor();
    void findDevices(); // send motee devreq (every motee will send addr while receive ack command from master)
    void speedChanged(int);
    void maxSpeedChanged(int);
    void kpChanged(int);
    void kdChanged(int);
    void kiChanged(int);
    void sendFrame();
    void resetParameters();


private:

    void generatePlot();
    void initActionsConnections();
    void createLayouts();
    void connectActions();
    void showStatusMessage(const QString &message);
    void dataInterpreter(QByteArray data);
    void fillAddress();

    Ui::MainWindow *ui;
    QLabel *status;
    Console *console;
    SettingsDialog *settings;
    QSerialPort *serial;
    QPushButton *buttons[10];
    QGroupBox *buttonBox;
    QGroupBox *controlBox;
    QVector<QByteArray> *filedata;
    QCustomPlot *customPlot;
    QAction *ctrlplus;
    QAction *ctrlminus;
    QAction *ctrls;
    QAction *ctrlp;
    QListWidget *devicesList;
    QLabel *speedLabel;
    QLabel *maxSpeedLabel;
    QLabel *kpLabel;
    QLabel *kdLabel;
    QLabel *kiLabel;
    QSlider *driveParameters[5];
    //driveParameters: speed -1000:1000 Kp, Ki, Kd, MaxSpeed
    QComboBox *address;
    QComboBox *groupAddress;


    bool autoscale;
};

#endif // MAINWINDOW_H
