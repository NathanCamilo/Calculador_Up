import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "../../subpages"
Item {
    Rectangle {
        id: rectangle
        color: "#2a3037"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Rectangle {
            id: escoamentomat
            radius: 10
            width: 710
            height: 50
            color: "#000047"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: espemat.bottom
            anchors.topMargin: 8
            anchors.leftMargin: 20
            anchors.rightMargin: 20

            ParafusoTextField {
                id: escmatpporcaTextField
                anchors.left: parent.left
                anchors.right: saveescoamentporca.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                anchors.leftMargin: 10
                anchors.rightMargin: 5
                placeholderText: "Digite a tensão de escoamento do material mais próximo a porca em MPa:"
            }

            Custombtn{
                id: saveescoamentporca
                x: 629
                text: qsTr("Ok")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                colorMouseOver: "#4a93dd"
                colorDefault: "#7984ee"
                font.pointSize: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                anchors.rightMargin: 5
                width: 163
                onClicked: {
                    backend.escmatpporcaText(escmatpporcaTextField.text)
                }

            }


        }

        Rectangle {
            id: espemat
            radius: 10
            width: 710
            height: 50
            color: "#000047"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            ParafusoTextField {
                id: espmatpporcaTextField
                anchors.left: parent.left
                anchors.right: saveespporca.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                placeholderText: "Digite a espessura do material mais próximo a porca:"
                anchors.rightMargin: 5
                anchors.leftMargin: 10
            }
            anchors.topMargin: 0
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            Custombtn{
                id: saveespporca
                x: 629
                text: qsTr("Ok")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                colorMouseOver: "#4a93dd"
                colorDefault: "#7984ee"
                font.pointSize: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                anchors.rightMargin: 5
                width: 163
                onClicked: {
                    backend.espmatpporcaText(espmatpporcaTextField.text)
                }

            }
        }

        AnimatedImage {
            id: animatedImage
            width: 384
            height: 181
            anchors.left: parent.left
            anchors.top: escoamentomat.bottom
            source: "../../../../images/espessuraporca.png"
            anchors.leftMargin: 208
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 8
        }
    }
    Connections{
        target: backend
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:300;width:800}
}
##^##*/
