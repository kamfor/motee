#include "../include/console.h"
#include <QScrollBar>
#include <QtCore/QDebug>

Console::Console(QWidget *parent)
    : QPlainTextEdit(parent){

    document()->setMaximumBlockCount(100);
    QPalette p = palette();
    p.setColor(QPalette::Base, Qt::black);
    p.setColor(QPalette::Text, Qt::white);
    setPalette(p);

}

void Console::putData(const QByteArray &data){

    insertPlainText(QString(data));
    insertPlainText("\n");

    QScrollBar *bar = verticalScrollBar();
    bar->setValue(bar->maximum());
}

void Console::keyPressEvent(QKeyEvent *e){

    switch (e->key()) {
    case Qt::Key_Backspace:
    case Qt::Key_Left:
    case Qt::Key_Right:
    case Qt::Key_Up:
    case Qt::Key_Down:
        break;
    default:
        emit getData(e->text().toLocal8Bit());
    }
}

void Console::mousePressEvent(QMouseEvent *e){

    Q_UNUSED(e)
    setFocus();
}


