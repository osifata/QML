import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Window {
    id:win
    minimumWidth: 360
    width: 360
    height: 640
    visible: true
    title: qsTr("Layouts")
    GridLayout{
        id: loColumn
        columns: 1
        rows: 3
        anchors.fill:parent
        Rectangle{
            color: "lightgrey"
            id: header
            width: win.width
            height: win.height * 0.1
            anchors.top: loColumn.top
            Layout.fillWidth: true
            Text {
                text: "Header"
                anchors.centerIn: parent
                font.pixelSize: parent.height * 0.2
            }
        }
        Comp_lay{
            id: content
            color: "lavender"
            border.color: "grey"
            width: win.width - 20
            height: win.height * 0.6
            Layout.alignment: Qt.AlignCenter
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.margins: 10
            Text {
                text: "Content"
                anchors.centerIn: parent
                font.pixelSize: parent.height * 0.025
            }
        }
        Rectangle{
            id: footer
            color: "lightgrey"
            width: win.width
            height: win.height * 0.1
            Layout.alignment: Qt.AlignCenter
            Layout.fillWidth: true
            RowLayout{
                spacing: 6
                anchors.fill:parent
                Comp_lay{
                    id: button1
                    width: content.width * 0.33
                    height: footer.height
                    Layout.alignment: Qt.AlignLeft
                    Layout.fillWidth: true
                    Text {
                        text: "1"
                        anchors.centerIn: parent
                        font.pixelSize: parent.height * 0.2
                    }
                }
                Comp_lay{
                    id: button2
                    width: content.width * 0.33
                    height: footer.height
                    Layout.alignment: Qt.AlignCenter
                    Layout.fillWidth: true
                    Text {
                        text: "2"
                        anchors.centerIn: parent
                        font.pixelSize: parent.height * 0.2
                    }
                }
                Comp_lay{
                    id: button3
                    width: content.width * 0.33
                    height: footer.height
                    Layout.alignment: Qt.AlignRight
                    Layout.fillWidth: true
                    Text {
                        text: "3"
                        anchors.centerIn: parent
                        font.pixelSize: parent.height * 0.2
                    }
                }
            }
        }
    }

}

