import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property alias text1HorizontalAlignment: text1.horizontalAlignment
    Rectangle {
        id: rectangle
        color: "#383e4c"
        anchors.fill: parent

        Rectangle {
            id: title
            height: 50
            color: "#7984ee"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 25
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            radius:10

            Label {
                id: title1
                color: "#e7f3ff"
                text: qsTr("Calculador de constantes de mola equivalente de uma união parafusada")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Segoe UI"
                font.pointSize: 17
            }
        }

        Rectangle {
            id: descriptRec
            color: "#3f4656"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: title.bottom
            anchors.bottom: parent.bottom
            anchors.rightMargin: 20
            anchors.leftMargin: 20
            anchors.bottomMargin: 20
            anchors.topMargin: 10
            radius:10

            Text {
                id: text1
                color: "#ffffff"
                text: qsTr("      O presente software tem como objetivo auxiliar no dimensionamento de uniões parafusadas a partir do cálculo e visualização das constantes de molas dos membros envolvidos. Este programa também busca evidenciar as dimensões da cabeça do parafuso a fim de contribuir na etapa de acabamento da união parafusada.
\n      Baseado na teoria dos cones de deformação e na teoria das constantes de mola, o software executa os cálculos necessário para obter as constantes de mola do parafuso e dos membros parafusados. O software também exibe o resultado de variáveis de dimensionamento internas como espessuras dos cones de deformação e dimensões das bases dos trapézios (Dw1, Dw2, Dw3).
\n      A aplicação este software é voltado a parafusos métricos de corpo cilíndrico do tipo passante.
\n      O ângulo de dimensionamento alfa é restrito a faixa de 25° à 35°. Caso este ângulo não seja conhecido, é indicado o uso de um valor médio dentro da faixa especificada. ")
                elide: Text.ElideNone
                anchors.fill: parent
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                lineHeightMode: Text.ProportionalHeight
                wrapMode: Text.Wrap
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                topPadding: 0
                font.hintingPreference: Font.PreferVerticalHinting
                renderType: Text.QtRendering
                fontSizeMode: Text.FixedSize
                minimumPixelSize: 12
                font.family: "Segoe UI"
                textFormat: Text.PlainText
            }
        }

    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:800}D{i:3}D{i:2}D{i:5}D{i:4}
}
##^##*/
