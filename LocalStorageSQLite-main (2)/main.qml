import QtQuick 2.12
import QtQuick.Controls 2.1
import QtQuick.LocalStorage 2.0
import'JSMain.js' as JSMain

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("LocalStorage Application")

    // data base identifier
    property string dbId: 'MyDatabase'

    // data base version
    property string dbVersion: '1.0'

    // data base description
    property string dbDescription:'Database application'

    //data base size 
    property  int dbSize: 1000000

    // data base 
    property var db

    // constructor
    Component.onCompleted: {
        JSMain.ejecutaConfiguracionInicial();
    }

    /*
     * stackview princiipal 
     */
     StackView {
        id: stackView
        anchors.fill: parent
        initialItem: inputForm
    }

    // data visualization form
    Component {
        id: dataForm
        DataForm {}
    }

    // data entry form
    Component {
        id: inputForm
        InputForm {}
    }
 }
