import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.LocalStorage 2.0
import 'DataFormJS.js' as DataFormJS

Item {
    anchors.fill: parent

    Component.onCompleted: {
        DataFormJS.loadInformation();

    }

    ListView {
        id: personListView
        spacing: 15

        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            bottom: backButton.top // button
        }

        model: ListModel {}

        delegate: Text {
            anchors {
                left: parent.left
                right: parent.right
            }

            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter

            // delegate variable
            text: 'ID: ' + id + '\n' + 'Name: ' + name + '\n'
                  + 'Age: ' + age
        }
   }

    Button {
        id: backButton
        text: 'back' // GO BACK
        height: 50

        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

        onClicked: {
            stackView.push(inputForm);
        }
    }
}
