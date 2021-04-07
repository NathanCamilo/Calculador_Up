import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.0
import "../subpages"
import "../pagecontrols"



Item {
    visible: true
    Rectangle {
        id: sextavadoPageInfo
        color: "#383a4c"
        anchors.fill: parent

        Label {
            id: title
            x: 283
            width: 580
            height: 48
            color: "#ffffff"
            text: qsTr("Cones de deformação da União Parafusada")
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 20
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Custombtn{
            id: proxPageBtn
            x: 560
            y: 420
            height: 30
            text: "Página constante de mola do parafuso"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            anchors.rightMargin: 25
            colorDefault: "#7984ee"
            colorMouseOver: "#4a93dd"
            onClicked: {
                stackView.push(Qt.resolvedUrl("constanteMolaInfo.qml"))


            }

        }

        ColumnLayout {
            width: 230
            height: 343
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.top: title.bottom
            anchors.topMargin: 10
            anchors.leftMargin: 25

            Rectangle {
                id: formula
                color: "#42455a"
                radius: 20
                Layout.preferredHeight: 200
                Layout.preferredWidth: 230

                Label {
                    id: leftTitle2
                    width: 214
                    height: 38
                    color: "#7984ee"
                    text: qsTr("Constante de mola dos membros em compressão")
                    anchors.left: icon2.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.leftMargin: 25
                    anchors.topMargin: 10
                    font.pointSize: 13
                }

                Image {
                    id: image1
                    width: 50
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: leftTitle2.bottom
                    anchors.bottom: parent.bottom
                    source: "../../../images/formula.png"
                    anchors.topMargin: 24
                    anchors.bottomMargin: 33
                    anchors.rightMargin: 10
                    anchors.leftMargin: 10
                    fillMode: Image.Stretch
                }
            }
        }

        ColumnLayout {
            x: 545
            width: 230
            height: 273
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.top: title.bottom
            anchors.topMargin: 10
            anchors.rightMargin: 25

            Rectangle {
                id: legenda
                height: 160
                color: "#42455a"
                radius: 20
                Rectangle {
                    id: icon4
                    y: 20
                    width: 81
                    height: 81
                    color: "#7984ee"
                    radius: 100
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 3
                    Image {
                        id: nut4
                        width: 62
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "../../../images/svg_images/legendas.png"
                        fillMode: Image.PreserveAspectFit
                        anchors.rightMargin: 15
                        anchors.leftMargin: 15
                        anchors.bottomMargin: 15
                        anchors.topMargin: 15
                    }
                }

                Label {
                    id: leftTitle4
                    width: 100
                    height: 29
                    color: "#7984ee"
                    text: qsTr("Legenda")
                    anchors.left: icon4.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 25
                    anchors.topMargin: 10
                    font.pointSize: 15
                }

                Label {
                    id: label5
                    width: 118
                    height: 86
                    color: "#ffffff"
                    text: qsTr("Dw: menor lado horizontal do trapézio  t= altura do trapézio d= diâmetro do parafuso               α= ângulo do cone")
                    anchors.left: icon4.right
                    anchors.top: leftTitle4.bottom
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    textFormat: Text.AutoText
                    anchors.leftMargin: 20
                    anchors.topMargin: 3
                    font.pointSize: 9
                }
                Layout.preferredHeight: 150
                Layout.preferredWidth: 230
            }
        }

        Rectangle {
            id: imageParafuso
            x: 267
            width: 248
            visible: true
            color: "#7984ee"
            anchors.top: title.bottom
            anchors.bottom: parent.bottom
            clip: false
            anchors.bottomMargin: 20
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            radius:10

            Image {
                id: image
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../../../images/ConesdDeformacaoLayoutCorpo.png"
                clip: true
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                fillMode: Image.Stretch
            }
        }

        Custombtn {
            id: infopageBtn
            y: 446
            width: 200
            height: 30
            text: "Página de Informações"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 25
            colorMouseOver: "#4a93dd"
            anchors.bottomMargin: 15
            colorDefault: "#7984ee"
            onClicked: {
                stackView.push(Qt.resolvedUrl("../infoPage.qml"))

            }
        }
    }
    Connections{
        target: backend
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:800}
}
##^##*/
