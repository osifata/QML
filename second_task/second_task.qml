import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick 2.0

Window {
    id: win
    width: 360
    height: 640
    visible: true
    title: qsTr("Loyouts")
    Rectangle {
        id: head
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top:  parent.top
        width: win.width
        height: win.height * 0.1
        color: "lightgrey"
        Text{
            text: "Header"
            anchors.centerIn: parent
            font.pixelSize: parent.height * 0.2
        }
    }
    Rectangle
    {
        id:footer
        color: "lightgrey"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        width: win.width
        height: win.height * 0.1
    }
    Comp {
        id: content
        color: "lavender"
        width: win.width - 20
        height: win.height * 0.6
        anchors.top: head.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: footer.top
        anchors.margins: 10
        Text {
            text: "Content"
            anchors.centerIn: parent
            font.pixelSize: parent.height * 0.025
        }
    }
    Comp {
        id: button1
        width: content.width * 0.33
        height: footer.height
        anchors.bottom: footer.bottom
        anchors.left: parent.left
        Text{
            anchors.centerIn: parent
            font.pixelSize: parent.height * 0.3
            text: "1"
        }

    }
    Comp {
        id: button2
        width: content.width * 0.33
        height: footer.height
        anchors.bottom: footer.bottom
        anchors.horizontalCenter: footer.horizontalCenter
        Text{
            text: "2"
            anchors.centerIn: parent
            font.pixelSize: parent.height * 0.3
        }

    }
    Comp {
        id: button3
        width: content.width * 0.33
        height: footer.height
        anchors.bottom: footer.bottom
        anchors.right: parent.right
        Text {
            text: "3"
            anchors.centerIn: parent
            font.pixelSize: parent.height * 0.3
        }
    }
}

