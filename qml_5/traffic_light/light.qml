import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5
Window {
    id:win
    minimumWidth: 375
    width: 375
    height: 720
    visible: true
    Rectangle{
        id: rect
        width: 350
        height: 650
        color: "lightgray"
        anchors.centerIn: parent
        GridLayout{
            columns: 1
            rows: 3
            rowSpacing: 16
            anchors.centerIn: rect
            Rect{
                id: rect_red
                color: "red"
            }
            Rect{
                id: rect_yellow
                color: "yellow"
            }
            Rect{
                id: rect_green
                color: "green"
            }

        }
        states:[
            State {
                name: "stop"
                PropertyChanges {target: rect_red; color: "red"}
                PropertyChanges {target:rect_yellow; color: "black"}
                PropertyChanges {target:rect_green; color: "#black"}
            },
            State {
                name: "caution"
                PropertyChanges {target: rect_red; color: "black"}
                PropertyChanges {target:rect_yellow; color: "yellow"}
                PropertyChanges {target:rect_green; color: "black"}
            },
            State {
                name: "go"
                PropertyChanges {target: rect_red; color: "black"}
                PropertyChanges {target:rect_yellow; color: "black"}
                PropertyChanges {target:rect_green; color: "green"}
            } ]
        state: "stop"
        transitions: [
            Transition {
                from: "stop"
                to: "caution"
                ColorAnimation {
                    target: rect_yellow
                    duration: 500 // 0.5 seconds
                }
            },
            Transition {
                from: "caution"
                to: "go"
                ColorAnimation {
                    target: rect_green
                    duration: 500 // 0.5 seconds
                }
            },
            Transition {
                from: "go"
                to: "stop"
                ColorAnimation {
                    target: rect_red
                    duration: 500 // 0.5 seconds
                }
            }
        ]
        MouseArea{
            anchors.fill:parent
            onClicked: {
                if (parent.state === "stop") {
                    parent.state = "caution";
                } else if (parent.state === "caution") {
                    parent.state = "go";
                } else {
                    parent.state = "stop";
                }
            }
        }

    }

}



