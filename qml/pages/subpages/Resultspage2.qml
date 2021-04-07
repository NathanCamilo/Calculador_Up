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
                text: qsTr("Resultados: Variáveis de dimensionamento")
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
                id: labelTextEspessuraconepPorca
                height: 80
                color: "#ffffff"
                text: qsTr("Espessura do cone próximo a porca: ")
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
                id: labelTextEspessucaconeInter
                color: "#ffffff"
                text: qsTr("Espessura do cone intermediário: ")
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
                id: labelTextEspProxCabec
                color: "#ffffff"
                text: qsTr("Espessura do cone próximo a cabeça do parafuso: ")
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
            height: 50
            color: "#2a2942"
            border.color: "#000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangle5.bottom
            Label {
                id: labelDw1
                height: 80
                color: "#ffffff"
                text: qsTr("Dw1: ")
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
            id: rectangle7
            height: 50
            color: "#2a2942"
            border.color: "#000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangle6.bottom
            anchors.leftMargin: 0
            Label {
                id: labelDw2
                height: 80
                color: "#ffffff"
                text: qsTr("Dw2: ")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 5
                font.pointSize: 14
            }
            anchors.rightMargin: 0
            anchors.topMargin: 0
        }

        Rectangle {
            id: rectangle8
            height: 50
            color: "#2a2942"
            border.color: "#000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangle7.bottom
            anchors.leftMargin: 0
            Label {
                id: labelDw3
                height: 80
                color: "#ffffff"
                text: qsTr("Dw3: ")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 5
                font.pointSize: 14
            }
            anchors.rightMargin: 0
            anchors.topMargin: 0
        }

        StackView {
            id: stackView
            anchors.fill: parent

            Custombtn {
                id: result3Btn
                x: 600
                y: 430
                height: 50
                text: "Próxima página"
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                colorDefault: "#7984ee"
                colorMouseOver: "#4a93dd"
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
                font.family: "Segoe UI"
                font.pointSize: 14
                onClicked: {
                    stackView.push(Qt.resolvedUrl("Resultspage3.qml"))
                    backend.result3Btn(result3Btn.down)
                }
            }

            Custombtn {
                id: result1Btn
                x: 0
                y: 430
                height: 50
                text: "Pagina Anterior"
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                colorMouseOver: "#4a93dd"
                colorDefault: "#7984ee"
                font.pointSize: 14
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                onClicked: {
                    stackView.push(Qt.resolvedUrl("Resultspage1.qml"))
                    backend.result1Btn(result1Btn.down)

                }
            }
        }
    }
    Connections{
        target: backend
        function onGetTensao1(tensao1){
            labelTextEspessuraconepPorca.text = tensao1

        }
        function onGetTensao2(tensao2){
            labelTextEspessucaconeInter.text = tensao2
        }
        function onGetTensao3(tensao3){
            labelTextEspProxCabec.text = tensao3
        }
        function onGetDw1(dw1){
            labelDw1.text = dw1
        }
        function onGetDw2(dw2){
            labelDw2.text = dw2
        }
        function onGetDw3(dw3){
            labelDw3.text = dw3
        }




    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:800}
}
##^##*/
