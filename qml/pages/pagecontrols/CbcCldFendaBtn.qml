import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
Button {
    id: btnCbccld
    text: qsTr("CabecaCilindrica")
    clip: true


    // CUSTOM PROPERTIES
    property url btnIconSource: "../../images/svg_images/screw.svg"
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
        property var dynamicColor: if(btnCbccld.down){
                                       btnCbccld.down ? btnColorPressed : btnColorDefault
                                   }else{
                                       btnCbccld.hovered ? btnColorMouseOver: btnColorDefault
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
            anchors.topMargin: 20
            anchors.leftMargin: 672
            anchors.bottomMargin: 20
            anchors.rightMargin: 18
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            source: "../../../images/svg_images/screw.svg"
            sourceSize.width: iconWidth
            sourceSize.height: iconHeight
            fillMode: Image.PreserveAspectFit
            visible: true
            antialiasing: true
        }

        ColorOverlay{
            width: 60
            height: 50
            source: iconBtn
            clip: true
            anchors.bottomMargin: 20
            anchors.topMargin: 20
            anchors.rightMargin: 18
            color: "#ffffff"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            antialiasing: true

        }

        Label {
            id: labelTitleparafuso
            color: "#e7f3ff"
            text: qsTr("Cabeça cilindríca boleada com fenda")
            anchors.left: parent.left
            anchors.right: labelDescript.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            anchors.rightMargin: 15
            anchors.leftMargin: 14
            anchors.bottomMargin: 14
            anchors.topMargin: 14
            font.pointSize: 22
        }

        Label {
            id: labelDescript
            width: 395
            height: 100
            color: "#e5f1fd"
            text: qsTr("São utilizados na fixação de elementos nos quais existe a possibilidade de se
fazer um encaixe profundo para a cabeça do parafuso, e a necessidade de um bom
acabamento na superfície dos componentes.")
            anchors.left: parent.left
            anchors.right: iconBtn.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            anchors.topMargin: 14
            anchors.bottomMargin: 14
            anchors.rightMargin: 18
            anchors.leftMargin: 250
            font.pointSize: 11
        }
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:120;width:750}
}
##^##*/
