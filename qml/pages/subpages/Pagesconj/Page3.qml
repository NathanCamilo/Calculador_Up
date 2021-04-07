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
            anchors.top: angulodimen.bottom
            anchors.topMargin: 8
            anchors.leftMargin: 20
            anchors.rightMargin: 20

            ParafusoTextField {
                id: escmatparTextField
                anchors.left: parent.left
                anchors.right: saveescoamentparafuso.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                anchors.leftMargin: 10
                anchors.rightMargin: 5
                placeholderText: "Digite a tensão de escoamento do material do parafuso em MPa:"
            }

            Custombtn{
                id: saveescoamentparafuso
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
                    backend.escoamentoparafusoText(escmatparTextField.text)
                }

            }
        }

        Rectangle {
            id: angulodimen
            radius: 10
            width: 710
            height: 50
            color: "#000047"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            ParafusoTextField {
                id: anguloTextField
                anchors.left: parent.left
                anchors.right: savedimenalfa.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                placeholderText: "Digite o angulo de dimensionamento alfa:"
                anchors.rightMargin: 5
                anchors.leftMargin: 10
            }
            anchors.topMargin: 0
            anchors.rightMargin: 20
            anchors.leftMargin: 20

            Custombtn{
                id: savedimenalfa
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
                    backend.anguloText(anguloTextField.text)
                }

            }
        }

        AnimatedImage {
            id: animatedImage
            width: 453
            height: 181
            anchors.left: parent.left
            anchors.top: escoamento.bottom
            source: "../../../../images/anguloalfaescoamento.png"
            anchors.leftMargin: 173
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
