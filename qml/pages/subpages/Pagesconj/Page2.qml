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
            id: passo
            radius: 10
            height: 50
            color: "#000047"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: percentual.bottom
            anchors.rightMargin: 10
            anchors.topMargin: 8
            anchors.leftMargin: 10

            ParafusoTextField {
                id: passoTextField
                anchors.left: parent.left
                anchors.right: savepasso.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                anchors.leftMargin: 20
                anchors.rightMargin: 5
                placeholderText: "Digite o Passo do parafuso em mm:"
            }

            Custombtn{
                id: savepasso
                x: 629
                text: qsTr("Ok")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                colorDefault: "#7984ee"
                colorMouseOver: "#4a93dd"
                font.pointSize: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                anchors.rightMargin: 5
                width: 163
                onClicked: {
                    backend.passoText(passoTextField.text)
                }
            }
        }

        Rectangle {
            id: percentual
            radius: 10
            width: 710
            height: 50
            color: "#000047"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            ParafusoTextField {
                id: percentualTextField
                anchors.left: parent.left
                anchors.right: savepercentual.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                placeholderText: "Digite o percentual roscado:"
                anchors.rightMargin: 5
                anchors.leftMargin: 20
            }

            Custombtn{
                id: savepercentual
                x: 629
                text: qsTr("Ok")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                colorDefault: "#7984ee"
                colorMouseOver: "#4a93dd"
                font.pointSize: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                anchors.rightMargin: 5
                width: 163
                onClicked: {
                    backend.percentualText(percentualTextField.text)
                }

            }
            anchors.topMargin: 2
            anchors.rightMargin: 10
            anchors.leftMargin: 10
        }

        AnimatedImage {
            id: animatedImage
            y: 114
            height: 181
            anchors.left: parent.left
            anchors.top: passo.bottom
            source: "../../../../images/passoepercentual1.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 6
            anchors.leftMargin: 150
        }
    }
    Connections{
        target: backend
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:300;width:800}D{i:2}D{i:7}
}
##^##*/
