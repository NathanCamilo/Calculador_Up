import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "Pagesconj"
import QtQuick.Layouts 1.0
Item {
    property var cont: 3
    Rectangle {
        id: rectangle
        color: "#2a3037"
        anchors.fill: parent

        Rectangle {
            id: titleContent
            radius: 10
            height: 48
            color: "#8791ca"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.rightMargin: 20
            anchors.leftMargin: 20

            Label {
                id: titleLabel
                height: 50
                color: "#e7f3ff"
                text: qsTr("Insira os dados do parafuso: Cabeça cilindrica boleada com fenda")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 15
            }
        }

        StackView {
            id: stackView
            height: 300
            visible: true
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: titleContent.bottom
            anchors.topMargin: 30
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            hoverEnabled: false
            enabled: true
            clip: true
            initialItem: Qt.resolvedUrl("Pagesconj/Page1.qml")
        }
        StackView {
            id: stackViewresults
            anchors.fill: parent
            hoverEnabled: true
            enabled: true
            clip: true

            Custombtn{
                id: finishcldBtn
                x: 641
                text: qsTr("Finalizar")
                y: 430
                width: 154
                height: 45
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                colorMouseOver: "#4a93dd"
                colorDefault: "#7984ee"
                anchors.bottomMargin: 5
                anchors.rightMargin: 5
                font.pointSize: 10
                onClicked: {
                    stackViewresults.push(Qt.resolvedUrl("Resultspagecld.qml"))
                    backend.finishcldBtn(finishcldBtn.down)
                    cont = 3
                }
            }

            GridLayout {
                x: 186
                y: 400
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                rows: 2
                columns: 2

                GridLayout {
                    rows: 1
                    columns: 5
                    Layout.rowSpan: 2
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredHeight: 60

                    Gridbtn {
                        id: gridpagina1
                        btnColorDefault: "#7984ee"
                        btnIconSource: "../../../images/svg_images/1.svg"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: {
                            gridpagina1.isActiveMenu = true
                            if(gridpagina1.isActiveMenu == true){
                                gridpagina1.btnColorDefault = "#7984ee"
                                gridpagina2.btnColorDefault = "#202022"
                                gridpagina3.btnColorDefault = "#202022"
                                gridpagina4.btnColorDefault = "#202022"
                                gridpagina5.btnColorDefault = "#202022"
                            }
                            gridpagina2.isActiveMenu = false
                            gridpagina3.isActiveMenu = false
                            gridpagina4.isActiveMenu = false
                            gridpagina5.isActiveMenu = false
                            stackView.push(Qt.resolvedUrl("Pagesconj/Page1.qml"))
                        }
                    }

                    Gridbtn {
                        id: gridpagina2
                        btnIconSource: "../../../images/svg_images/dois.svg"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: {
                            gridpagina1.isActiveMenu = false
                            gridpagina2.isActiveMenu = true
                            if(gridpagina2.isActiveMenu == true){
                                gridpagina2.btnColorDefault = "#7984ee"
                                gridpagina1.btnColorDefault = "#202022"
                                gridpagina3.btnColorDefault = "#202022"
                                gridpagina4.btnColorDefault = "#202022"
                                gridpagina5.btnColorDefault = "#202022"
                            }
                            gridpagina3.isActiveMenu = false
                            gridpagina4.isActiveMenu = false
                            gridpagina5.isActiveMenu = false
                            stackView.push(Qt.resolvedUrl("Pagesconj/Page2.qml"))
                        }
                    }

                    Gridbtn {
                        id: gridpagina3
                        btnIconSource: "../../../images/svg_images/tres.svg"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: {
                            gridpagina1.isActiveMenu = false
                            gridpagina2.isActiveMenu = false
                            gridpagina3.isActiveMenu = true
                            if(gridpagina3.isActiveMenu == true){
                                gridpagina3.btnColorDefault = "#7984ee"
                                gridpagina2.btnColorDefault = "#202022"
                                gridpagina1.btnColorDefault = "#202022"
                                gridpagina4.btnColorDefault = "#202022"
                                gridpagina5.btnColorDefault = "#202022"
                            }
                            gridpagina4.isActiveMenu = false
                            gridpagina5.isActiveMenu = false
                            stackView.push(Qt.resolvedUrl("Pagesconj/Page3.qml"))
                        }
                    }

                    Gridbtn {
                        id: gridpagina4
                        btnIconSource: "../../../images/svg_images/quatro.svg"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: {
                            gridpagina1.isActiveMenu = false
                            gridpagina2.isActiveMenu = false
                            gridpagina3.isActiveMenu = false
                            gridpagina4.isActiveMenu = true
                            if(gridpagina4.isActiveMenu == true){
                                gridpagina4.btnColorDefault = "#7984ee"
                                gridpagina2.btnColorDefault = "#202022"
                                gridpagina3.btnColorDefault = "#202022"
                                gridpagina1.btnColorDefault = "#202022"
                                gridpagina5.btnColorDefault = "#202022"
                            }
                            gridpagina5.isActiveMenu = false
                            stackView.push(Qt.resolvedUrl("Pagesconj/Page4.qml"))
                        }
                    }

                    Gridbtn {
                        id: gridpagina5
                        btnIconSource: "../../../images/svg_images/cinco.svg"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: {
                            gridpagina1.isActiveMenu = false
                            gridpagina2.isActiveMenu = false
                            gridpagina3.isActiveMenu = false
                            gridpagina4.isActiveMenu = false
                            gridpagina5.isActiveMenu = true
                            if(gridpagina5.isActiveMenu == true){
                                gridpagina5.btnColorDefault = "#7984ee"
                                gridpagina2.btnColorDefault = "#202022"
                                gridpagina3.btnColorDefault = "#202022"
                                gridpagina4.btnColorDefault = "#202022"
                                gridpagina1.btnColorDefault = "#202022"
                            }
                            stackView.push(Qt.resolvedUrl("Pagesconj/Page5.qml"))
                        }
                    }
                }

                Item {
                    id: spacer
                    Layout.preferredWidth: 14
                    Layout.preferredHeight: 14
                }

                Label {
                    id: label
                    color: "#e7f3ff"
                    text: qsTr("Páginas")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 52
                    font.pointSize: 12
                }
            }

            Custombtn {
                id: resetBtn
                y: 425
                width: 89
                height: 40
                text: "Reset"
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.leftMargin: 10
                anchors.bottomMargin: 10
                colorDefault: "#7984ee"
                colorMouseOver: "#4a93dd"
                onClicked: {
                    backend.resetBtn(resetBtn.down)
                }
            }
        }
    }
    Connections{
        target: backend
    }
}



/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:800}D{i:16}
}
##^##*/
