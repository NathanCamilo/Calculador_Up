import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: btnLeftMenu
    text: qsTr("Parafusos")
    // CUSTOM PROPERTIES
    property url btnIconSource: "../../../images/svg_images/interface.svg"
    property color btnColorDefault: "#4f576b"
    property color btnColorMouseOver: "#363d46"
    property color btnColorPressed: "#00a1f1"
    property int iconWidth: 18
    property int  iconHeight: 18
    property color activeMenuColor: "#55aaff"
    property color activeMenuColorRight: "#2a3037"
    property bool isActiveMenu: false

    QtObject{
        id: internal

        // MOUSE OVER AND PRESSED CHANGE COLOR
        property var dynamicColor: if(btnLeftMenu.down){
                                       btnLeftMenu.down ? btnColorPressed : btnColorDefault
                                   }else{
                                       btnLeftMenu.hovered ? btnColorMouseOver: btnColorDefault
                                   }
    }


    implicitWidth: 250
    implicitHeight: 60

    background: Rectangle{
        id: bgBtn
        color: internal.dynamicColor

        Rectangle{
            anchors{
                top: parent.top
                left: parent.left
                bottom: parent.bottom
            }
            color: activeMenuColor
            width: 3
            visible: isActiveMenu
        }

        Rectangle{
            anchors{
                top: parent.top
                right: parent.right
                bottom: parent.bottom
            }
            color: activeMenuColorRight
            width: 5
            visible: isActiveMenu
        }
    }

    contentItem: Item{
        anchors.fill: parent
        id: content
        Image {
            id: iconBtn
            source: btnIconSource
            anchors.leftMargin: 26
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            sourceSize.width: iconWidth
            sourceSize.height: iconHeight
            width: iconWidth
            height: iconHeight
            fillMode: Image.PreserveAspectFit
            visible: false
            antialiasing: true
        }

        ColorOverlay{
            anchors.fill: iconBtn
            source: iconBtn
            color: "#ffffff"
            anchors.verticalCenter: parent.verticalCenter
            antialiasing: true
            width: iconWidth
            height: iconHeight
        }

        Text {
            color: "#ffffff"
            text: btnLeftMenu.text
            font: btnLeftMenu.font
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            minimumPixelSize: 14
            anchors.leftMargin: 65
        }
    }
}
