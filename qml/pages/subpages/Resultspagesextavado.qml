import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "Pagesconj"
import QtQuick.Layouts 1.0

Item {
    property var cont: 1
    clip: true
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
                text: qsTr("Parafuso escolhido: Sextavado  | Resultados")
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
                id: labelTextAltura
                height: 80
                color: "#ffffff"
                text: qsTr("Altura da cabeça do parafuso:")
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
                id: labelTextFaces
                color: "#ffffff"
                text: qsTr("Medida entre as faces sextavadas:")
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
                id: labelTextVertices
                color: "#ffffff"
                text: qsTr("Medida entre os vértices sextavados:")
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 14
                anchors.leftMargin: 5
            }
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.rightMargin: 0
        }

        StackView {
            id: stackView
            anchors.fill: parent
            enabled: true
            hoverEnabled: true
            clip: true

            Custombtn {
                id: calcPageBtn
                y: 424
                height: 50
                text: "Página de cálculo"
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                colorDefault: "#7984ee"
                colorMouseOver: "#4a93dd"
                anchors.bottomMargin: 10
                anchors.leftMargin: 20
                onClicked: {
                    stackView.push(Qt.resolvedUrl("SextavadoPage.qml"))

                }
            }

            Custombtn {
                id: result1Btn
                x: 580
                y: 420
                height: 50
                text: "Próxima página"
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                colorMouseOver: "#4a93dd"
                colorDefault: "#7984ee"
                anchors.bottomMargin: 10
                anchors.rightMargin: 20
                font.family: "Segoe UI"
                font.pointSize: 14
                onClicked: {
                    stackView.push(Qt.resolvedUrl("Resultspage1.qml"))
                    backend.result1Btn(result1Btn.down)
                }
            }
        }
    }
    Connections{
        target: backend
        function onGetK(k){
            labelTextAltura.text = k
        }
        function onGetS(s){
            labelTextFaces.text = s
        }
        function onGetE(e){
            labelTextVertices.text = e
        }

    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:800}
}
##^##*/
