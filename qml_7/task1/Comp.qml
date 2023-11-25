import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    // Define properties directly
    property color gradientStart: "#ffffff"
    property color gradientEnd: "#c1bbf9"
    property string buttonText: ""

    contentItem: Text {
        text: buttonText
        font: parent.font
        opacity: parent.enabled ? 1.0 : 0.3
        color: parent.down ? "#d4d4d4" : "#000000"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 20
        opacity: parent.enabled ? 1 : 0.3
        gradient: Gradient {
            GradientStop { position: 0; color: gradientStart }
            GradientStop { position: 1; color: gradientEnd }
        }
    }

    onClicked: {
        // Нажатие кнопки обрабатывается внутри
    }
}
