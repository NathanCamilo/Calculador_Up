import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.0


Item {
    id: gridLayoutpages
    Rectangle {
        id: rectangle
        color: "#191919"
        anchors.fill: parent

        GridLayout {
            anchors.fill: parent
            rows: 1
            columns: 5

            Gridbtn {
                id: gridpage1
                btnIconSource: "../../../../images/svg_images/1.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            Gridbtn {
                id: gridpage2
                btnIconSource: "../../../../images/svg_images/dois.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            Gridbtn {
                id: gridpage3
                btnIconSource: "../../../../images/svg_images/tres.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            Gridbtn {
                id: gridpage4
                btnIconSource: "../../../../images/svg_images/quatro.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }

            Gridbtn {
                id: gridpage5
                btnIconSource: "../../../../images/svg_images/cinco.svg"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:100;width:450}D{i:2}
}
##^##*/
