import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

ApplicationWindow {
    id: win
    minimumWidth: 360
    width: 360
    height: 640
    visible: true
    title: "Task_for_Login_Page"
    property int defMargin: 8
    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0; color: "#ffffff" }
            GradientStop { position: 1; color: "#c1bbf9" }
        }
    }

    ColumnLayout {
        anchors.centerIn: parent
        width: 200
        spacing: win.defMargin

        TextField {
            id: usernameField
            placeholderText: "Username"
            font.pixelSize: 16
            Layout.fillWidth: true
        }

        TextField {
            id: passwordField
            placeholderText: "Password"
            font.pixelSize: 16
            echoMode: TextInput.Password
            Layout.fillWidth: true
        }

        RowLayout {
            spacing: win.defMargin
            Comp {
                buttonText: qsTr("Log in")
                gradientStart: "#b8b8b8"
                gradientEnd: "#b8b8b8"
                onClicked: {
                    // Логика для кнопки входа
                    console.log("Вы вошли в систему")
                }
            }
            Comp {
                buttonText: qsTr("Clear")
                gradientStart:  "#ffffff"
                gradientEnd: "#c1bbf9"
                onClicked: {
                    // Очистить поля ввода
                    usernameField.text = ""
                    passwordField.text = ""
                }
            }

        }
    }
}
