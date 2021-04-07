import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.0
import "../subpages"
import "../pagecontrols"



Item {
    visible: true
    Rectangle {
        id: cabecaRedondaPageInfo
        color: "#383a4c"
        anchors.fill: parent

        Label {
            id: title
            x: 283
            width: 507
            height: 48
            color: "#ffffff"
            text: qsTr("Parafuso de Cabeça Redonda com Fenda")
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 20
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Custombtn{
            id: cbcRddBtn
            x: 560
            y: 420
            height: 30
            text: "Página do parafuso Cabeça\n    Redonda com fenda"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 15
            anchors.rightMargin: 25
            colorDefault: "#7984ee"
            colorMouseOver: "#4a93dd"
            onClicked: {
                stackView.push(Qt.resolvedUrl("../subpages/CabecaRedondaPage.qml"))
                backend.cbcrddBtn(cbcRddBtn.down)

            }

        }

        ColumnLayout {
            width: 230
            height: 343
            anchors.left: parent.left
            anchors.top: title.bottom
            anchors.topMargin: 10
            anchors.leftMargin: 25

            Rectangle {
                id: cabeca
                color: "#42455a"
                radius:20
                Layout.preferredHeight: 106
                Layout.preferredWidth: 230


                Rectangle {
                    id: icon
                    y: 20
                    width: 81
                    height: 81
                    color: "#7984ee"
                    radius: 100
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 3

                    Image {
                        id: nut
                        width: 62
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "../../../images/fenda.png"
                        anchors.topMargin: 15
                        anchors.bottomMargin: 15
                        anchors.leftMargin: 15
                        anchors.rightMargin: 15
                        fillMode: Image.PreserveAspectFit
                    }


                }

                Label {
                    id: leftTitle
                    width: 100
                    height: 38
                    color: "#7984ee"
                    text: qsTr("Cabeça")
                    anchors.left: icon.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.topMargin: 10
                    font.pointSize: 15
                    anchors.leftMargin: 25
                }

                Label {
                    id: label1
                    width: 100
                    height: 45
                    color: "#ffffff"
                    text: qsTr("Fenda: cavidade sobre a cabeça do parafuso.")
                    anchors.left: icon.right
                    anchors.top: leftTitle.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.pointSize: 9
                    anchors.topMargin: 5
                    anchors.leftMargin: 20
                }
            }

            Rectangle {
                id: corpo
                color: "#42455a"
                radius: 20
                Layout.preferredHeight: 106
                Layout.preferredWidth: 230
                Rectangle {
                    id: icon1
                    y: 20
                    width: 81
                    height: 81
                    color: "#7984ee"
                    radius: 100
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 3
                    Image {
                        id: nut1
                        width: 62
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "../../../images/svg_images/screw1.svg"
                        fillMode: Image.PreserveAspectFit
                        anchors.rightMargin: 15
                        anchors.leftMargin: 15
                        anchors.bottomMargin: 15
                        anchors.topMargin: 15
                    }
                }

                Label {
                    id: leftTitle1
                    width: 100
                    height: 38
                    color: "#7984ee"
                    text: qsTr("Corpo")
                    anchors.left: icon1.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 25
                    anchors.topMargin: 10
                    font.pointSize: 15
                }

                Label {
                    id: label2
                    width: 100
                    height: 47
                    color: "#ffffff"
                    text: qsTr("Tipos mais comuns: parafuso rosca inteira e rosca parcial.")
                    anchors.left: icon1.right
                    anchors.top: leftTitle1.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    textFormat: Text.RichText
                    anchors.leftMargin: 20
                    anchors.topMargin: 3
                    font.pointSize: 9
                }
            }

            Rectangle {
                id: aplicacao
                color: "#42455a"
                radius: 20
                Layout.preferredHeight: 106
                Layout.preferredWidth: 230
                Rectangle {
                    id: icon2
                    y: 20
                    width: 81
                    height: 81
                    color: "#7984ee"
                    radius: 100
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 3
                    Image {
                        id: nut2
                        width: 62
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "../../../images/wrench.png"
                        fillMode: Image.PreserveAspectFit
                        anchors.rightMargin: 15
                        anchors.leftMargin: 15
                        anchors.bottomMargin: 15
                        anchors.topMargin: 15
                    }
                }

                Label {
                    id: leftTitle2
                    width: 100
                    height: 38
                    color: "#7984ee"
                    text: qsTr("Aplicação")
                    anchors.left: icon2.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 25
                    anchors.topMargin: 10
                    font.pointSize: 15
                }

                Label {
                    id: label3
                    width: 96
                    color: "#ffffff"
                    text: qsTr("Montagens que não sofrem grandes esforços.")
                    anchors.left: icon2.right
                    anchors.top: leftTitle2.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    textFormat: Text.RichText
                    anchors.leftMargin: 20
                    anchors.topMargin: 3
                    font.pointSize: 9
                }
            }
        }

        ColumnLayout {
            x: 545
            width: 230
            height: 259
            anchors.right: parent.right
            anchors.top: title.bottom
            anchors.topMargin: 10
            anchors.rightMargin: 25
            Rectangle {
                id: rectangle4
                color: "#42455a"
                radius: 20
                Rectangle {
                    id: icon3
                    y: 20
                    width: 81
                    height: 81
                    color: "#7984ee"
                    radius: 100
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 3
                    Image {
                        id: nut3
                        width: 62
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "../../../images/brick.png"
                        fillMode: Image.PreserveAspectFit
                        anchors.rightMargin: 15
                        anchors.leftMargin: 15
                        anchors.bottomMargin: 15
                        anchors.topMargin: 15
                    }
                }

                Label {
                    id: leftTitle3
                    width: 100
                    height: 38
                    color: "#7984ee"
                    text: qsTr("Material")
                    anchors.left: icon3.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 25
                    anchors.topMargin: 10
                    font.pointSize: 15
                }

                Label {
                    id: label4
                    width: 100
                    height: 45
                    color: "#ffffff"
                    text: qsTr("Aço, aço-inox, cobre, latão, etc.")
                    anchors.left: icon3.right
                    anchors.top: leftTitle3.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.leftMargin: 20
                    anchors.topMargin: 3
                    font.pointSize: 9
                }
                Layout.preferredHeight: 106
                Layout.preferredWidth: 230
            }

            Rectangle {
                id: rectangle5
                height: 120
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
                    height: 61
                    color: "#ffffff"
                    text: qsTr("D = Diâmetro cabeça d = diametro             h = Altura cabeça     N = abert. da fenda")
                    anchors.left: icon4.right
                    anchors.top: leftTitle4.bottom
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    anchors.leftMargin: 20
                    anchors.topMargin: 3
                    font.pointSize: 9
                }
                Layout.preferredHeight: 106
                Layout.preferredWidth: 230
            }
        }

        Rectangle {
            id: imageParafuso
            x: 267
            width: 150
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
                source: "../../../images/cabecaRedondaLayoutCorpo.png"
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
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:800}D{i:26}D{i:31}D{i:33}
}
##^##*/
