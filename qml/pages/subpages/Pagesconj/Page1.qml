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
            id: comprimento
            radius: 10
            width: 710
            height: 50
            color: "#000047"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 2
            anchors.leftMargin: 20
            anchors.rightMargin: 20

            ParafusoTextField {
                id: comprimentoTextField
                anchors.left: parent.left
                anchors.right: savecomprimento.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                anchors.leftMargin: 10
                anchors.rightMargin: 5
                placeholderText: "Digite o comprimento do parafuso em mm:"
            }
            Custombtn{
                id: savecomprimento
                x: 629
                text: qsTr("Ok")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                colorMouseOver: "#4a93dd"
                colorDefault: "#7984ee"
                clip: false
                font.pointSize: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                anchors.rightMargin: 5
                width: 163
                onClicked: {
                    backend.comprimentoText(comprimentoTextField.text)

                }
            }


        }

        Rectangle {
            id: diametro
            radius: 10
            width: 710
            height: 50
            color: "#000047"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: comprimento.bottom
            ParafusoTextField {
                id: diametroTextField
                anchors.left: parent.left
                anchors.right: savediametro.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                placeholderText: "Digite o diametro do parafuso em mm:"
                anchors.rightMargin: 5
                anchors.leftMargin: 10
            }
            anchors.topMargin: 8
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            Custombtn{
                id: savediametro
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
                    backend.diametroText(diametroTextField.text)
                }

            }
        }

        AnimatedImage {
            id: animatedImage
            width: 490
            height: 181
            anchors.left: parent.left
            anchors.top: diametro.bottom
            source: "../../../../images/sextavadodiametro.png"
            anchors.topMargin: 8
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.leftMargin: 130
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
