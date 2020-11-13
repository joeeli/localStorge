import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.LocalStorage 2.0
import 'InputFormJS.js' as InputFormJS

Item {
    anchors.fill: parent
    id: parentObject

    Column {  
        anchors.fill: parent
        spacing: 2

        Row {
            spacing: 2

           Label {
             id: nameLabel
             text: 'Name'
            }

           TextField {
               id: nameTextField
               width: parentObject.width - nameLabel.width
           }
        }

    Row {
        spacing: 2

        Label {
            id: ageLabel
            text: 'Age'
        }

        TextField {
            id: ageTextField
            width: parentObject.width - ageLabel.width
        }
    }

    Button {
        id: saveButton
        text: 'Save' // SAVE
        width: parent.width
        height: 50

        onClicked: {
            InputFormJS.saveInformation();
        }
      }

    /*Button {
        id: clearButton
        text: 'clear' // CLEAR
        width: parent.width
        height: 50

        onClicked: {
            InputFormJS.clearInformation();
        }
      }*/

    Button {
        id: backButton
        text: 'Back' // GO BACK
        width:  parent.width
        height: 50

        onClicked: {
           stackView.push(dataForm);
        }
      }
   }
}



