import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: btnProximo
    text: qsTr("Próximo")
    // CUSTOM PROPERTIES
    property url btnIconSource: "../../images/svg_images/seta-direita.svg"
    property color btnColorDefault: "#202022"
    property color btnColorMouseOver: "#363d46"
    property color btnColorPressed: "#00a1f1"
    property int iconWidth: 20
    property int  iconHeight: 20
    property color activeMenuColor: "#55aaff"
    property color activeMenuColorRight: "#2a3037"
    property bool isActiveMenu: false

    QtObject{
        id: internal

        // MOUSE OVER AND PRESSED CHANGE COLOR
        property var dynamicColor: if(btnProximo.down){
                                       btnProximo.down ? btnColorPressed : btnColorDefault
                                   }else{
                                       btnProximo.hovered ? btnColorMouseOver: btnColorDefault
                                   }
    }


    implicitWidth: 200
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
            anchors.leftMargin: 160
            sourceSize.height: 20
            sourceSize.width: 20
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.right: parent.right
            source: btnIconSource
            height: iconHeight
            fillMode: Image.PreserveAspectFit
            visible: true
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
            text: btnProximo.text
            font: btnProximo.font
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 65
        }
    }
}
