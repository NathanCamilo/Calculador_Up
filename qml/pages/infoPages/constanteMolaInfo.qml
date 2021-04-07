import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.0
import "../subpages"
import "../pagecontrols"



Item {
    visible: true
    Rectangle {
        id: constantemolaPageInfo
        color: "#383a4c"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Label {
            id: title
            x: 283
            width: 507
            height: 48
            color: "#ffffff"
            text: "Constante de mola do parafuso\n"
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 20
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        ColumnLayout {
            width: 230
            height: 343
            anchors.left: parent.left
            anchors.top: title.bottom
            anchors.topMargin: 10
            anchors.leftMargin: 25

            Rectangle {
                id: cteMolaParafuso
                height: 130
                color: "#42455a"
                radius:20
                Layout.preferredHeight: 140
                Layout.preferredWidth: 230


                Label {
                    id: leftTitle
                    width: 187
                    height: 38
                    color: "#7984ee"
                    text: qsTr("Constante de mola do parafuso")
                    anchors.left: icon.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 10
                    font.pointSize: 15
                    anchors.leftMargin: 25
                }

                Image {
                    id: image1
                    width: 187
                    anchors.top: leftTitle.bottom
                    anchors.bottom: parent.bottom

                    source: "../../../images/ConstanteDeMola.png"
                    anchors.topMargin: 5
                    anchors.bottomMargin: 5
                    anchors.horizontalCenter: parent.horizontalCenter

                    fillMode: Image.Stretch
                }
            }

            Rectangle {
                id: cteRigidezJunta
                height: 130
                color: "#42455a"
                radius: 20
                Layout.preferredHeight: 140
                Layout.preferredWidth: 230

                Label {
                    id: leftTitle1
                    width: 197
                    height: 38
                    color: "#7984ee"
                    text: qsTr("Constante de rigidez da junta")
                    anchors.left: icon1.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    textFormat: Text.RichText
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.leftMargin: 25
                    anchors.topMargin: 10
                    font.pointSize: 14
                }

                Image {
                    id: image2
                    width: 155
                    anchors.top: leftTitle1.bottom
                    anchors.bottom: parent.bottom
                    source: "../../../images/cteRigidezJuntaFormula.png"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 5
                    anchors.bottomMargin: 10
                    fillMode: Image.Stretch
                }
            }
        }

        ColumnLayout {
            x: 545
            width: 230
            height: 259
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.top: title.bottom
            anchors.topMargin: 10
            anchors.rightMargin: 25

            Rectangle {
                id: legenda
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
                    width: 132
                    height: 120
                    color: "#ffffff"
                    text: qsTr("Ad, Ld = área e comprimento do corpo do parafuso sem rosca          At\n, Lt = área e comprimento efetivamente roscado ;        E = Modulo de Young do material")
                    anchors.left: icon4.right
                    anchors.top: leftTitle4.bottom
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    textFormat: Text.RichText
                    anchors.leftMargin: 6
                    anchors.topMargin: 3
                    font.pointSize: 9
                }
                Layout.preferredHeight: 170
                Layout.preferredWidth: 230
            }
        }

        Rectangle {
            id: imageParafuso
            x: 267
            width: 222
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
                source: "../../../images/ConstantedeMolaParafusoLayoutCorpo.png"
                activeFocusOnTab: true
                focus: true
                antialiasing: true
                asynchronous: true
                clip: true
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                fillMode: Image.PreserveAspectFit
            }
        }

        Custombtn {
            id: conespageBtn
            y: 446
            width: 200
            height: 30
            text: "Página de Cones de Deformação"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 25
            colorMouseOver: "#4a93dd"
            anchors.bottomMargin: 15
            colorDefault: "#7984ee"
            onClicked: {
                stackView.push(Qt.resolvedUrl("conesinfo.qml"))

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
