import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
Button {
    id: btnSextavado
    text: qsTr("Sextavado")
    clip: true


    // CUSTOM PROPERTIES
    property url btnIconSource: "../../images/svg_images/nut.svg"
    property color btnColorDefault: "#22273b"
    property color btnColorMouseOver: "#202022"
    property color btnColorPressed: "#00a1f1"
    property int iconWidth: 60
    property int  iconHeight: 50
    property color activeMenuColor: "#55aaff"
    property color activeMenuColorRight: "#2a3037"
    property bool isActiveMenu: false

    QtObject{
        id: internal

        // MOUSE OVER AND PRESSED CHANGE COLOR
        property var dynamicColor: if(btnSextavado.down){
                                       btnSextavado.down ? btnColorPressed : btnColorDefault
                                   }else{
                                       btnSextavado.hovered ? btnColorMouseOver: btnColorDefault
                                   }
    }





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
            visible: true
        }

        Rectangle{
            anchors{
                top: parent.top
                right: parent.right
                bottom: parent.bottom
            }
            width: 3
            visible: true
            color: "#55aaff"
        }
    }

    contentItem: Item{
        anchors.fill: parent
        id: content
        Image {
            id: iconBtn
            height: 50
            width: 60
            anchors.topMargin: 20
            anchors.bottomMargin: 20
            anchors.rightMargin: 18
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "../../../images/svg_images/nut.svg"
            anchors.leftMargin: 36
            sourceSize.width: iconWidth
            sourceSize.height: iconHeight
            fillMode: Image.PreserveAspectFit
            visible: true
            antialiasing: true
        }

        ColorOverlay{
            width: 60
            source: iconBtn
            anchors.leftMargin: 36
            anchors.bottomMargin: 20
            anchors.topMargin: 20
            anchors.rightMargin: 18
            color: "#ffffff"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            antialiasing: true
            height: 50
        }

        Label {
            id: labelDescript
            height: 100
            color: "#e7f3ff"
            text: qsTr("O parafuso sextavado é um dos fixadores mais comuns quando se trata de construção e reparo. Seu nome se deve à sua cabeça com 6 (seis) faces.")
            anchors.left: parent.left
            anchors.right: iconBtn.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            wrapMode: Text.Wrap
            anchors.leftMargin: 250
            font.pointSize: 13
            anchors.topMargin: 20
            anchors.bottomMargin: 20
            anchors.rightMargin: 27
        }

        Label {
            id: label
            color: "#e7f3ff"
            text: qsTr("Sextavado:")
            anchors.left: parent.left
            anchors.right: labelDescript.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 22
            anchors.bottomMargin: 14
            anchors.rightMargin: 14
            anchors.leftMargin: 14
            anchors.topMargin: 14
        }
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.6600000262260437;height:120;width:750}
}
##^##*/
