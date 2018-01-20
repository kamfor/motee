/****************************************************************************
** Meta object code from reading C++ file 'mainwindow.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../serialreceiver/include/mainwindow.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mainwindow.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_MainWindow_t {
    QByteArrayData data[30];
    char stringdata0[374];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MainWindow_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MainWindow_t qt_meta_stringdata_MainWindow = {
    {
QT_MOC_LITERAL(0, 0, 10), // "MainWindow"
QT_MOC_LITERAL(1, 11, 14), // "openSerialPort"
QT_MOC_LITERAL(2, 26, 0), // ""
QT_MOC_LITERAL(3, 27, 15), // "closeSerialPort"
QT_MOC_LITERAL(4, 43, 12), // "openSettings"
QT_MOC_LITERAL(5, 56, 12), // "clearConsole"
QT_MOC_LITERAL(6, 69, 5), // "about"
QT_MOC_LITERAL(7, 75, 9), // "writeData"
QT_MOC_LITERAL(8, 85, 4), // "data"
QT_MOC_LITERAL(9, 90, 8), // "readData"
QT_MOC_LITERAL(10, 99, 11), // "handleError"
QT_MOC_LITERAL(11, 111, 28), // "QSerialPort::SerialPortError"
QT_MOC_LITERAL(12, 140, 5), // "error"
QT_MOC_LITERAL(13, 146, 8), // "saveFile"
QT_MOC_LITERAL(14, 155, 16), // "realtimeDataSlot"
QT_MOC_LITERAL(15, 172, 17), // "changePlotCaption"
QT_MOC_LITERAL(16, 190, 8), // "savePlot"
QT_MOC_LITERAL(17, 199, 15), // "extendPlotScale"
QT_MOC_LITERAL(18, 215, 13), // "dropPlotScale"
QT_MOC_LITERAL(19, 229, 12), // "setPlotColor"
QT_MOC_LITERAL(20, 242, 11), // "findDevices"
QT_MOC_LITERAL(21, 254, 12), // "speedChanged"
QT_MOC_LITERAL(22, 267, 15), // "maxSpeedChanged"
QT_MOC_LITERAL(23, 283, 9), // "kpChanged"
QT_MOC_LITERAL(24, 293, 9), // "kdChanged"
QT_MOC_LITERAL(25, 303, 9), // "kiChanged"
QT_MOC_LITERAL(26, 313, 14), // "addressChanged"
QT_MOC_LITERAL(27, 328, 9), // "sendFrame"
QT_MOC_LITERAL(28, 338, 15), // "resetParameters"
QT_MOC_LITERAL(29, 354, 19) // "changeCurrentDevice"

    },
    "MainWindow\0openSerialPort\0\0closeSerialPort\0"
    "openSettings\0clearConsole\0about\0"
    "writeData\0data\0readData\0handleError\0"
    "QSerialPort::SerialPortError\0error\0"
    "saveFile\0realtimeDataSlot\0changePlotCaption\0"
    "savePlot\0extendPlotScale\0dropPlotScale\0"
    "setPlotColor\0findDevices\0speedChanged\0"
    "maxSpeedChanged\0kpChanged\0kdChanged\0"
    "kiChanged\0addressChanged\0sendFrame\0"
    "resetParameters\0changeCurrentDevice"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MainWindow[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      25,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,  139,    2, 0x08 /* Private */,
       3,    0,  140,    2, 0x08 /* Private */,
       4,    0,  141,    2, 0x08 /* Private */,
       5,    0,  142,    2, 0x08 /* Private */,
       6,    0,  143,    2, 0x08 /* Private */,
       7,    1,  144,    2, 0x08 /* Private */,
       9,    0,  147,    2, 0x08 /* Private */,
      10,    1,  148,    2, 0x08 /* Private */,
      13,    0,  151,    2, 0x08 /* Private */,
      14,    3,  152,    2, 0x08 /* Private */,
      15,    0,  159,    2, 0x08 /* Private */,
      16,    0,  160,    2, 0x08 /* Private */,
      17,    0,  161,    2, 0x08 /* Private */,
      18,    0,  162,    2, 0x08 /* Private */,
      19,    0,  163,    2, 0x08 /* Private */,
      20,    0,  164,    2, 0x08 /* Private */,
      21,    1,  165,    2, 0x08 /* Private */,
      22,    1,  168,    2, 0x08 /* Private */,
      23,    1,  171,    2, 0x08 /* Private */,
      24,    1,  174,    2, 0x08 /* Private */,
      25,    1,  177,    2, 0x08 /* Private */,
      26,    0,  180,    2, 0x08 /* Private */,
      27,    0,  181,    2, 0x08 /* Private */,
      28,    0,  182,    2, 0x08 /* Private */,
      29,    1,  183,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QByteArray,    8,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 11,   12,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int,    2,    2,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    2,

       0        // eod
};

void MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MainWindow *_t = static_cast<MainWindow *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->openSerialPort(); break;
        case 1: _t->closeSerialPort(); break;
        case 2: _t->openSettings(); break;
        case 3: _t->clearConsole(); break;
        case 4: _t->about(); break;
        case 5: _t->writeData((*reinterpret_cast< const QByteArray(*)>(_a[1]))); break;
        case 6: _t->readData(); break;
        case 7: _t->handleError((*reinterpret_cast< QSerialPort::SerialPortError(*)>(_a[1]))); break;
        case 8: _t->saveFile(); break;
        case 9: _t->realtimeDataSlot((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 10: _t->changePlotCaption(); break;
        case 11: _t->savePlot(); break;
        case 12: _t->extendPlotScale(); break;
        case 13: _t->dropPlotScale(); break;
        case 14: _t->setPlotColor(); break;
        case 15: _t->findDevices(); break;
        case 16: _t->speedChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 17: _t->maxSpeedChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 18: _t->kpChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 19: _t->kdChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 20: _t->kiChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 21: _t->addressChanged(); break;
        case 22: _t->sendFrame(); break;
        case 23: _t->resetParameters(); break;
        case 24: _t->changeCurrentDevice((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_MainWindow.data,
      qt_meta_data_MainWindow,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_MainWindow.stringdata0))
        return static_cast<void*>(this);
    return QMainWindow::qt_metacast(_clname);
}

int MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 25)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 25;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 25)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 25;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
