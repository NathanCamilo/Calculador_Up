import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: btnPage
    // CUSTOM PROPERTIES
    property url btnIconSource: "../../images/svg_images/menu_icon.svg"
    property color btnColorDefault: "#202022"
    property color btnColorMouseOver: "#363d46"
    property color btnColorPressed: "#00a1f1"
    property bool isActiveMenu: false

    QtObject{
        id: internal

        // MOUSE OVER AND PRESSED CHANGE COLOR
        property var dynamicColor: if(btnPage.down){
                                       btnPage.down ? btnColorPressed : btnColorDefault
                                   }else{
                                       btnPage.hovered ? btnColorMouseOver: btnColorDefault
                                   }
    }

    width: 70
    height: 60

    implicitWidth: 70
    implicitHeight: 60

    background: Rectangle{
        id: bgBtn
        color: internal.dynamicColor

        Image {
            id: iconBtn
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 25
            width: 25
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        ColorOverlay{
            anchors.fill: iconBtn
            source: iconBtn
            color: "#ffffff"
            antialiasing: false
        }
    }
}

