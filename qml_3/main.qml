import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Window {
    id:win
    minimumWidth: 375
    width: 375
    height: 720
    visible: true
    title: qsTr("Task_for_Signal")
    GridLayout{
        id: loColumn
        columns: 1
        rows: 3
        anchors.fill:parent
        Rect{
            color: "#8b00ff"
            id: comp_1
            anchors.top: loColumn.top
            Layout.fillWidth: true
            Text {
                id: text_com1
                text: "Header"
                anchors.centerIn: comp_1
            }
        }
        Rect{
            color: "#a358e8"
            id: comp_2
            Layout.alignment: Qt.AlignCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.margins: 10
            Text {
                id: name
                text: qsTr("Some content")
                anchors.centerIn: comp_2
            }
        }
        Rect{
            id: comp_3
            color: "white"
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
            RowLayout{
                spacing: 6
                anchors.fill:parent
                Rect{
                    id: comp_4
                    Layout.alignment: Qt.AlignLeft
                    Layout.fillWidth: true
                    color: mouse.containsMouse ? "#d199ff": "#8b00ff"
                    Text {
                        text: "Item 1"
                        anchors.centerIn: comp_4
                    }
                    MouseArea {
                        id:mouse
                        hoverEnabled: true
                        anchors.fill: parent
                        onClicked:{
                            name.text = "Item 1 content"
                            text_com1.text = "Header 1"
                            comp_4.opacity = 1
                            comp_5.opacity = 0.5
                            comp_6.opacity = 0.5
                        }
                    }
                }
                Rect{
                    id: comp_5
                    Layout.alignment: Qt.AlignCenter
                    Layout.fillWidth: true
                    color: mouse1.containsMouse ? "#d199ff": "#8b00ff"
                    Text {
                        text: "Item 2"
                        anchors.centerIn: comp_5
                    }
                    MouseArea {
                        id:mouse1
                        hoverEnabled: true
                        anchors.fill: parent
                        onClicked:{
                            name.text = "Item 2 content"
                            text_com1.text = "Header 2"
                            comp_4.opacity = 0.5
                            comp_5.opacity = 1
                            comp_6.opacity = 0.5
                        }
                    }
                }
                Rect{
                    id: comp_6
                    Layout.alignment: Qt.AlignRight
                    Layout.fillWidth: true
                    color: mouse2.containsMouse ? "#d199ff": "#8b00ff"
                    Text {
                        text: "Item 3"
                        anchors.centerIn: comp_6
                    }
                    MouseArea {
                        id:mouse2
                        hoverEnabled: true
                        anchors.fill: parent
                        onClicked:{
                            name.text = "Item 3 content"
                            text_com1.text = "Header 3"
                            comp_4.opacity = 0.5
                            comp_5.opacity = 0.5
                            comp_6.opacity = 1
                        }
                    }
                }
            }
        }
    }

}



