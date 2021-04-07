import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "pagecontrols"
import QtQuick.Window 2.15
import "subpages"
import "subpages/Pagesconj"
Item {
    id: homePage


    visible: true


    Rectangle {
        id: content
        color: "#383e4c"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Column {
            id: columnParafusos
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0

            Rectangle {
                id: titleHomeBar
                height: 43
                color: "#8791ca"
                radius: 12
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 50
                anchors.leftMargin: 50
                anchors.topMargin: 10

                Label {
                    id: escolhaLabel
                    color: "#ffffff"
                    text: qsTr("Escolha o tipo do parafuso que deseja calcular abaixo:")
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    font.pointSize: 14
                }

            }

            SextavadoBtn {
                id: sextavadoBtn
                width: 750
                height: 120
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: titleHomeBar.bottom
                anchors.leftMargin: 18
                anchors.rightMargin: 33
                anchors.topMargin: 15
                onClicked: {
                    cbcRddBtn.isActiveMenu = false
                    sextavadoBtn.isActiveMenu = true
                    cbcCldFendaBtn.isActiveMenu = false
                    stackView.push(Qt.resolvedUrl("subpages/SextavadoPage.qml"))
                    backend.sextavadoBtn(sextavadoBtn.down)


                }
            }

            CbcRddBtn {
                id: cbcRddBtn
                height: 120
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: sextavadoBtn.bottom
                anchors.rightMargin: 32
                anchors.leftMargin: 18
                anchors.topMargin: 15
                onClicked: {
                    cbcRddBtn.isActiveMenu = true
                    sextavadoBtn.isActiveMenu = false
                    cbcCldFendaBtn.isActiveMenu = false
                    stackView.push(Qt.resolvedUrl("subpages/CabecaRedondaPage.qml"))
                    backend.cbcrddBtn(cbcRddBtn.down)
                }
            }

            CbcCldFendaBtn {
                id: cbcCldFendaBtn
                height: 120
                text: "CabecaCilindrica"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cbcRddBtn.bottom
                anchors.topMargin: 15
                anchors.leftMargin: 18
                anchors.rightMargin: 32
                onClicked: {
                    cbcRddBtn.isActiveMenu = false
                    sextavadoBtn.isActiveMenu = false
                    cbcCldFendaBtn.isActiveMenu = true
                    stackView.push(Qt.resolvedUrl("subpages/CabecaCilindricaPage.qml"))
                    backend.cbcCldFendaBtn(cbcCldFendaBtn.down)

                }
            }
        }

        StackView {
            id: stackView
            visible: true
            anchors.fill: parent
            hoverEnabled: false
            enabled: true
            clip: true
            initialItem: Qt.resolvedUrl("pages/homePage.qml")

        }




    }
    Connections{
        target: backend
    }
}






/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.6600000262260437;height:480;width:800}
}
##^##*/
