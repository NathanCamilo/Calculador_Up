import QtQuick 2.15
import "controls"
import "components"
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.Window 2.15
import QtQuick.Timeline 1.0



Window {
    id: mainWindow
    width: 600
    height: 380
    visible: true
    color: "#00000000"
    title: qsTr("Hello World")




    // REMOVENDO BARRA DE TITULO
    flags: Qt.SplashScreen | Qt.FramelessWindowHint

    Rectangle {
        id: bg
        width: 600
        height: 380
        color: "#151515"
        border.color: "#7984ee"
        border.width: 3
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Image {
            id: image
            x: 17
            width: 368
            height: 204
            opacity: 0
            anchors.top: parent.top
            source: "../images/Iconeapp.png"
            anchors.horizontalCenterOffset: -86
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 30
            fillMode: Image.PreserveAspectFit
            antialiasing: true
        }

        CircularProgressBar {
            id: circularProgressBar
            x: 375
            width: 150
            height: 150
            opacity: 0
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 30
            anchors.rightMargin: 15
            value: 100
            textColor: "#7984ee"
            progressColor: "#7984ee"
        }

        Image {
            id: icon1
            x: 30
            y: 230
            width: 80
            height: 80
            opacity: 0
            anchors.bottom: parent.bottom
            source: "../images/svg_images/nut.svg"
            anchors.bottomMargin: 40
            fillMode: Image.PreserveAspectFit

        }
        ColorOverlay{
            id: colorOverlay
            anchors.fill: icon1
            source: icon1
            color: "#7984ee"
            anchors.verticalCenter: parent.verticalCenter
            antialiasing: true
            width: iconWidth
            height: iconHeight
            opacity: 0
        }

        Image {
            id: icon2
            x: 130
            y: 230
            width: 80
            height: 80
            opacity: 0
            anchors.bottom: parent.bottom
            source: "../images/svg_images/screw.svg"
            asynchronous: true
            anchors.bottomMargin: 40
            fillMode: Image.PreserveAspectFit
        }
        ColorOverlay{
            id: colorOverlay1
            x: 177
            anchors.fill: icon2
            source: icon2
            color: "#7984ee"
            anchors.verticalCenter: parent.verticalCenter
            antialiasing: true
            width: iconWidth
            height: iconHeight
            opacity: 0
        }

        Image {
            id: icon3
            x: 230
            y: 242
            width: 80
            height: 80
            opacity: 0
            anchors.bottom: parent.bottom
            source: "../images/svg_images/screw1.svg"
            anchors.bottomMargin: 40
            fillMode: Image.PreserveAspectFit
        }
        ColorOverlay{
            id: colorOverlay2
            anchors.fill: icon3
            source: icon3
            color: "#7984ee"
            anchors.verticalCenter: parent.verticalCenter
            antialiasing: true
            width: iconWidth
            height: iconHeight
            opacity: 0
        }

        Label {
            id: version
            x: 429
            y: 329
            width: 103
            height: 13
            color: "#ffffff"
            text: qsTr("Versão:0.1.1")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.rightMargin: 8
            anchors.bottomMargin: 8
        }

        TopBarButton {
            id: btnClose
            x: 545
            width: 45
            height: 17
            anchors.right: parent.right
            anchors.top: parent.top
            btnColorDefault: "#7984ee"
            btnIconSource: "../images/svg_images/close_icon.svg"
            anchors.topMargin: 0
            anchors.rightMargin: 0
            onClicked: mainWindow.close()

        }

        Rectangle {
            id: rectangle
            x: 435
            y: 275
            width: 150
            height: 50
            opacity: 0
            color: "#7984ee"
            radius:20

            Label {
                id: label
                color: "#ffffff"
                text: qsTr("Carregando componentes...")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
            }


        }

    }
    property int timeInterval: 3000

    Timer{
        id: timer
        interval: timeInterval
        running: true
        repeat: false
        onTriggered: {
            var component = Qt.createComponent("main.qml")
            var win = component.createObject()
            win = show()
            visible = false
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                duration: 3000
                running: true
                loops: 1
                to: 3000
                from: 0
            }
        ]
        startFrame: 0
        enabled: true
        endFrame: 3000

        KeyframeGroup {
            target: circularProgressBar
            property: "value"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 100
                frame: 1581
            }
        }

        KeyframeGroup {
            target: circularProgressBar
            property: "opacity"

            Keyframe {
                frame: 1588
                value: 1
            }
        }

        KeyframeGroup {
            target: colorOverlay
            property: "opacity"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 1596
            }
        }

        KeyframeGroup {
            target: colorOverlay1
            property: "opacity"
            Keyframe {
                value: 0
                frame: 501
            }

            Keyframe {
                value: 1
                frame: 1604
            }

            Keyframe {
                value: 0
                frame: 0
            }
        }

        KeyframeGroup {
            target: image
            property: "opacity"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 1
                frame: 756
            }

            Keyframe {
                frame: 1604
                value: 1
            }
        }

        KeyframeGroup {
            target: rectangle
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1611
                value: 1
            }
        }

        KeyframeGroup {
            target: colorOverlay2
            property: "opacity"
            Keyframe {
                frame: 698
                value: 0
            }

            Keyframe {
                frame: 1589
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }
    }



}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:2}D{i:3}D{i:5}D{i:7}D{i:9}D{i:12}D{i:1}D{i:15}
}
##^##*/
