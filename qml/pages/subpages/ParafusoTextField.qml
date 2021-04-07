import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "../subpages"

TextField {
    id: customtextField

    // CUSTOM PROPERTIES
    property color colorDefault: "#282c34"
    property color colorOnFocus: "#242831"
    property color colorMouseOver: "#252F38"

    QtObject {
        id: internal

        property var dynamicColor: if(customtextField.focus){
                                       customtextField.hovered ? colorOnFocus : colorDefault
                                   }else{
                                       customtextField.hovered ? colorMouseOver : colorDefault
                                   }

    }

    implicitWidth: 300
    implicitHeight: 40
    placeholderText: placeholderText.text
    color: "#ffffff"
    font.pointSize: 12
    background: Rectangle{
        color: internal.dynamicColor
        radius: 10
    }

    selectByMouse: true
    selectedTextColor: "#FFFFFF"
    selectionColor: "#ff007f"
    placeholderTextColor: "#81848c"

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:50;width:710}
}
##^##*/
