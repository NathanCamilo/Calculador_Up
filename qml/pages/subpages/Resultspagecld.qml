import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "Pagesconj"
import QtQuick.Layouts 1.0

Item {
    property var cont: 3
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
                text: qsTr("Parafuso escolhido: Cabeça cilindrica boleada com fenda | Resultados")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 19
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
                id: labelDiametrocili
                height: 80
                color: "#ffffff"
                text: qsTr("Diametro da cabeça do parafuso:")
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
                id: labelRaioCili
                color: "#ffffff"
                text: qsTr("Raio da circunferência da cabeça do parafuso:")
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
                id: labelAlturacbc
                color: "#ffffff"
                text: qsTr("Altura da cabeça do parafuso:")
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
            hoverEnabled: true
            enabled: true
            clip: false

            Custombtn {
                id: calcPageBtn
                y: 426
                height: 50
                text: "Página de cálculo"
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                clip: true
                colorMouseOver: "#4a93dd"
                colorDefault: "#7984ee"
                anchors.leftMargin: 20
                anchors.bottomMargin: 10
                onClicked: {
                    stackView.push(Qt.resolvedUrl("CabecaCilindricaPage.qml"))
                }
            }

            Custombtn {
                id: result1Btn
                x: 600
                y: 430
                height: 50
                text: "Próxima página"
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                clip: true
                colorMouseOver: "#4a93dd"
                colorDefault: "#7984ee"
                anchors.bottomMargin: 10
                anchors.rightMargin: 20
                font.family: "Segoe UI"
                font.pointSize: 14
                onClicked: {
                    stackView.push(Qt.resolvedUrl("Resultspage1.qml"))
                    cont = 3
                    backend.result1Btn(result1Btn.down)
                }
            }
        }
    }
    Connections{
        target: backend
        function onGetVal1(val1){
            labelDiametrocili.text = val1
        }
        function onGetVall2(vall2){
            labelRaioCili.text = vall2
        }
        function onGetKa(ka){
            labelAlturacbc.text = ka
        }


    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:800}D{i:11}
}
##^##*/
