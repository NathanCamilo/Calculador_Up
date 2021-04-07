import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "Pagesconj"
import QtQuick.Layouts 1.0

Item {
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
                text: qsTr("Resultados: Parafuso")
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
            clip: true
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.rightMargin: 0
            border.color: "#000000"

            Label {
                id: labelTextComprimento
                height: 80
                color: "#ffffff"
                text: qsTr("Comprimento total: ")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                verticalAlignment: Text.AlignVCenter
                clip: true
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
                id: labelTextComprimentoNaoRoscado
                color: "#ffffff"
                text: qsTr("Comprimento não roscado: ")
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
                id: labelTextComprimentoEfetivo
                color: "#ffffff"
                text: qsTr("Comprimento efetivamente roscado: ")
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
                id: labelTextCteMolaP
                height: 80
                color: "#ffffff"
                text: qsTr("Constante de mola do parafuso:")
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
            clip: true
            hoverEnabled: true
            enabled: true


            Custombtn {
                id: resultbackparafusoBtn
                y: 432
                height: 51
                text: "Página anterior"
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                colorMouseOver: "#4a93dd"
                colorDefault: "#7984ee"
                clip: true
                anchors.leftMargin: 20
                anchors.bottomMargin: 10
                onClicked: {
                    if(cont == 1){
                        stackView.push(Qt.resolvedUrl("Resultspagesextavado.qml"))
                        backend.finishsxtBtn(resultbackparafusoBtn.down)
                    }if(cont == 2){
                        stackView.push(Qt.resolvedUrl("Resultspagecdrcld.qml"))
                        backend.finishcdrBtn(resultbackparafusoBtn.down)
                    }if(cont ==3){
                        stackView.push(Qt.resolvedUrl("Resultspagecld.qml"))
                        backend.finishcldBtn(resultbackparafusoBtn.down)
                    }


                }
            }

            Custombtn {
                id: result2Btn
                x: 580
                y: 420
                height: 50
                text: "Próxima página"
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                colorMouseOver: "#4a93dd"
                colorDefault: "#7984ee"
                clip: true
                anchors.bottomMargin: 10
                anchors.rightMargin: 20
                font.family: "Segoe UI"
                font.pointSize: 14
                onClicked: {
                    stackView.push(Qt.resolvedUrl("Resultspage2.qml"))
                    backend.result2Btn(result2Btn.down)
                }
            }
        }
        Connections{
            target: backend
            function onGetCtr(ctr){
                labelTextComprimento.text = ctr

            }
            function onGetCer(cer){
                labelTextComprimentoEfetivo.text = cer
            }
            function onGetCnr(cnr){
                labelTextComprimentoNaoRoscado.text = cnr
            }
            function onGetKp(kp){
                labelTextCteMolaP.text = kp
            }


        }
    }

    /*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:800}
}
##^##*/
}
