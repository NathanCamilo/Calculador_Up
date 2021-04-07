import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.Window 2.15
import "subpages"
import "../controls"
import "../../qml"


Item {
    property color btnColorDefault: "#4a93ee"
    Rectangle {
        id: rectangle
        color: "#383e4c"
        anchors.fill: parent

        Image {
            id: image
            anchors.left: parent.left
            anchors.right: leftMenu.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "../../images/infopageLayout1.png"
            anchors.rightMargin: 0
            fillMode: Image.PreserveAspectFit

            Rectangle {
                id: title
                width: 207
                height: 61
                color: "#7984ee"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 5
                anchors.leftMargin: 5

                Label {
                    id: label
                    color: "#ffffff"
                    text: qsTr("Informações")
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 12
                }
            }
        }

        Rectangle {
            id: leftMenu
            x: 732
            y: 0
            width: 68
            color: "#454c5e"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            clip: false
            anchors.rightMargin: 0
            anchors.topMargin: 0
            PropertyAnimation {
                id: animationMenu
                target: leftMenu
                property: "width"
                easing.type: Easing.InOutQuint
                duration: 1000
                to: if(leftMenu.width == 68) return 200; else return 68
            }

            Column {
                id: columnMenus
                width: 70
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                clip: true
                anchors.topMargin: 0
                anchors.rightMargin: 0

                anchors.leftMargin: 0
                anchors.bottomMargin: 90

                LeftMenuBtn {
                    id: infoBtn
                    text: "  Informações"
                    antialiasing: true
                    focus: true
                    btnColorPressed: "#7984ee"
                    font.pointSize: 8
                    btnIconSource: "../../images/svg_images/settings_icon.svg"
                    btnColorDefault: "#4f576b"
                    activeMenuColorRight: "#280b6f"
                    onClicked: animationMenu.running = true

                }

                LeftMenuBtn {
                    id: sxtBtn
                    btnColorDefault: "#4f576b"
                    antialiasing: true
                    focus: true
                    text: "  Sextavado"
                    btnColorPressed: "#7984ee"
                    btnIconSource: "../../images/svg_images/nut.svg"
                    onClicked: {
                        rdnBtn.isActiveMenu = false
                        cldBtn.isActiveMenu = false
                        sxtBtn.isActiveMenu = true
                        stackView.push(Qt.resolvedUrl("infoPages/sextavadoinfo.qml"))


                    }
                }

                LeftMenuBtn {
                    id: rdnBtn
                    text: "  Cabeça redonda\n com fenda"
                    antialiasing: true
                    focus: true
                    btnColorPressed: "#7984ee"
                    btnIconSource: "../../images/svg_images/screw1.svg"
                    btnColorDefault: "#4f576b"
                    onClicked: {
                        rdnBtn.isActiveMenu = true
                        cldBtn.isActiveMenu = false
                        sxtBtn.isActiveMenu = false
                        stackView.push(Qt.resolvedUrl("infoPages/cabecaRedondainfo.qml"))


                    }
                }

                LeftMenuBtn {
                    id: cldBtn
                    antialiasing: true
                    focus: true
                    btnColorDefault: "#4f576b"
                    text: "  Cabeça cilíndrica\n boleada com fenda"
                    btnColorPressed: "#7984ee"
                    btnIconSource: "../../images/svg_images/screw.svg"
                    onClicked: {
                        rdnBtn.isActiveMenu = false
                        cldBtn.isActiveMenu = true
                        sxtBtn.isActiveMenu = false
                        stackView.push(Qt.resolvedUrl("infoPages/cabecaCilindricainfo.qml"))


                    }
                }

                LeftMenuBtn {
                    id: formulasBtn
                    text: "  Equações"
                    focus: true
                    antialiasing: true
                    btnColorDefault: "#4f576b"
                    btnIconSource: "../../images/svg_images/math-book.svg"
                    btnColorPressed: "#7984ee"
                    onClicked: {
                        rdnBtn.isActiveMenu = false
                        cldBtn.isActiveMenu = false
                        sxtBtn.isActiveMenu = false
                        formulasBtn.isActiveMenu = true
                        stackView.push(Qt.resolvedUrl("infoPages/conesinfo.qml"))


                    }
                }
            }
            anchors.bottomMargin: 0
        }

        StackView {
            id: stackView
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            hoverEnabled: false
            enabled: true
        }

    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:800}
}
##^##*/
