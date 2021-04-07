import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "../../subpages"
Item {
    Rectangle {
        id: rectangle
        color: "#2a3037"
        anchors.fill: parent

        Rectangle {
            id: escoamento
            radius: 10
            width: 710
            height: 50
            color: "#000047"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: espmatpcbparr.bottom
            anchors.topMargin: 8
            anchors.leftMargin: 20
            anchors.rightMargin: 20

            ParafusoTextField {
                id: escmatpcbparTextField
                anchors.left: parent.left
                anchors.right: saveescoamentmatparaf.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                anchors.leftMargin: 10
                anchors.rightMargin: 5
                placeholderText: "Digite a tensão de escoamento do material próximo a cabeça do parafuso em MPa:"
            }

            Custombtn{
                id: saveescoamentmatparaf
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
                    backend.escmatpcbparText(escmatpcbparTextField.text)
                }

            }


        }

        Rectangle {
            id: espmatpcbparr
            radius: 10
            width: 710
            height: 50
            color: "#000047"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            ParafusoTextField {
                id: espmatpcbparTextField
                anchors.left: parent.left
                anchors.right: saveespmatpcbpar.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 5
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                placeholderText: "Digite a espessura do material mais próximo a cabeça do parafuso:"
                anchors.leftMargin: 10
            }
            anchors.topMargin: 0
            anchors.rightMargin: 20
            anchors.leftMargin: 20

            Custombtn{
                id: saveespmatpcbpar
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
                    backend.espmatpcbparText(espmatpcbparTextField.text)
                }

            }

        }

        AnimatedImage {
            id: animatedImage
            width: 384
            height: 181
            anchors.left: parent.left
            anchors.top: escoamento.bottom
            source: "../../../../images/espessuraparafuso.png"
            anchors.leftMargin: 208
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 6
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
