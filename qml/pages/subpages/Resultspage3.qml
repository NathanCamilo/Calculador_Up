import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "Pagesconj"
import QtQuick.Layouts 1.0

Item {
    Rectangle {
        id: rectangle
        color: "#303030"
        anchors.fill: parent

        Rectangle {
            id: rectangle1
            height: 30
            color: "#10101e"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0

            Label {
                id: title
                height: 80
                color: "#ffffff"
                text: qsTr("Resultados: Constantes de mola da união parafusada")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 20
            }
        }

        Rectangle {
            id: rectangle3
            height: 80
            color: "#2a2942"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangle1.bottom
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.rightMargin: 0
            border.color: "#000000"

            Label {
                id: labelTextK1
                height: 80
                color: "#ffffff"
                text: qsTr("Constante de mola 1: ")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 5
                font.pointSize: 14
            }

        }

        Rectangle {
            id: rectangle4
            height: 80
            color: "#2a2942"
            border.color: "#000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangle3.bottom
            Label {
                id: labelTextK2
                color: "#ffffff"
                text: qsTr("Constante de mola 2: ")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
                anchors.leftMargin: 5
            }
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.rightMargin: 0
        }

        Rectangle {
            id: rectangle5
            height: 80
            color: "#2a2942"
            border.color: "#000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangle4.bottom
            Label {
                id: labelTextK3
                color: "#ffffff"
                text: qsTr("Constante de mola 3: ")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
                anchors.leftMargin: 5
            }
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.rightMargin: 0
        }

        Rectangle {
            id: rectangle6
            height: 80
            color: "#2a2942"
            border.color: "#000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangle5.bottom
            Label {
                id: labelTextKeq
                height: 80
                color: "#ffffff"
                text: qsTr("Constante de mola equivalente da união: ")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
                anchors.leftMargin: 5
            }
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.rightMargin: 0
        }

        Custombtn {
            id: result2Btn
            y: 440
            height: 40
            text: "Pagina Anterior"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            colorDefault: "#7984ee"
            colorMouseOver: "#4a93dd"
            font.pointSize: 14
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            onClicked: {
               stackView.push(Qt.resolvedUrl("Resultspage2.qml"))
               backend.result2Btn(result2Btn.down)
            }
        }

        Rectangle {
            id: rectangle7
            height: 80
            color: "#2a2942"
            border.color: "#000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangle6.bottom
            anchors.leftMargin: 0
            Label {
                id: labelTextCtpf
                height: 80
                color: "#ffffff"
                text: qsTr("Constante C do arranjo: ")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 5
                font.pointSize: 14
            }
            anchors.rightMargin: 0
            anchors.topMargin: 0
        }
    }
    Connections{
        target: backend
        function onGetK1(k1){
            labelTextK1.text = k1
        }
        function onGetK2(k2){
            labelTextK2.text = k2
        }
        function onGetK3(k3){
            labelTextK3.text = k3
        }
        function onGetKeq(keq){
            labelTextKeq.text = keq
        }
        function onGetCtpf(ctpf){
            labelTextCtpf.text = ctpf
        }


    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:480;width:800}
}
##^##*/
