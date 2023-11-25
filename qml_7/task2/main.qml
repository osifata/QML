import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: win
    minimumWidth: 360
    width: 360
    height: 640
    visible: true
    title: "Task_for_Login_Page"

    background: Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0; color: "#ffffff" }
            GradientStop { position: 1; color: "#c1bbf9" }
        }
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.centerIn: parent
        anchors.margins: 20
        spacing: 20

        Text {
            text: "Enter your password:"
            font.pixelSize: 16
            Layout.alignment: Qt.AlignCenter
            Layout.margins: 10
        }

        Rectangle {
            color: "transparent"
            Layout.preferredWidth: parent.width * 0.8
            Layout.preferredHeight: 50
            Layout.alignment: Qt.AlignCenter
            Layout.margins: 20

            Row {
                spacing: 6
                anchors.centerIn: parent
                Repeater {
                    model: 6
                    Label {
                        width: 20
                        height: 20
                        font.pixelSize: 36
                        text: "*"
                        Layout.alignment: Qt.AlignCenter
                        color: index < passwordField.text.length ? "purple" : "pink"
                    }
                }
            }
        }

        GridLayout {
            id: keypad
            width: parent.width
            columns: 3
            rowSpacing: 10
            columnSpacing: 10

            Repeater {
                model: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "", "0", "C", "L"]
                Button {
                    text: modelData
                    onClicked: {
                        if (text === "C") {
                            passwordField.text = "";
                        } else if (text === "L"){
                            console.log("You login in page!")
                        }else {
                            passwordField.text += text;
                        }
                    }
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    width: 50
                    Layout.margins: 5
                }
            }
        }
    }

    TextField {
        id: passwordField
        visible: false
    }
}
