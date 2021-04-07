import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
Button {
    id: btnCbcrdd
    text: qsTr("Cabecaredonda")
    clip: true


    // CUSTOM PROPERTIES
    property url btnIconSource: "../../images/svg_images/screw1.svg"
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
        property var dynamicColor: if(btnCbcrdd.down){
                                       btnCbcrdd.down ? btnColorPressed : btnColorDefault
                                   }else{
                                       btnCbcrdd.hovered ? btnColorMouseOver: btnColorDefault
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
            x: 660
            width: 72
            anchors.topMargin: 20
            anchors.bottomMargin: 20
            anchors.rightMargin: 18
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "../../../images/svg_images/screw1.svg"
            sourceSize.width: iconWidth
            sourceSize.height: iconHeight
            fillMode: Image.PreserveAspectFit
            visible: true
            antialiasing: true
        }

        ColorOverlay{
            x: 660
            width: 72
            source: iconBtn
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
            id: label
            width: 224
            color: "#e7f3ff"
            text: qsTr("Cabeça Redonda com fenda")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.leftMargin: 14
            anchors.bottomMargin: 14
            anchors.topMargin: 14
            font.pointSize: 22
        }

        Label {
            id: label1
            width: 395
            height: 100
            color: "#e7f3ff"
            text: qsTr("Esse tipo de parafuso é muito empregado em montagens que não sofrem
grandes esforços e onde a cabeça do parafuso não pode exceder a superfície
da peça.")
            anchors.left: label.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
            textFormat: Text.AutoText
            anchors.rightMargin: 115
            anchors.leftMargin: 6
            font.pointSize: 12
            anchors.topMargin: 14
            anchors.bottomMargin: 14
        }
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.6600000262260437;height:120;width:750}
}
##^##*/
