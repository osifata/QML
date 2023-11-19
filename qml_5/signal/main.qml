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
            Button {
                    id: backButton
                    text: "Назад"
                    visible: loColumn.state === "item_1" || loColumn.state === "item_2" || loColumn.state === "item_3"
                    onClicked: {
                        if (loColumn.state === "item_1") {
                            loColumn.state = "begin";
                        } else if (loColumn.state === "item_2") {
                            loColumn.state = "item_1";
                        } else if (loColumn.state === "item_3") {
                            loColumn.state = "item_2";
                        }
                    }
                }
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
                text: qsTr("Some")
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
                    color: "#8b00ff"
                    Text {
                        text: "Item 1"
                        anchors.centerIn: comp_4
                    }
                    MouseArea{
                            anchors.fill:parent
                            onClicked: {
                                if (loColumn.state === "begin") {
                                    loColumn.state = "item_1";
                                }else if (loColumn.state === "item_2") {
                                    loColumn.state = "item_1";
                                }else if (loColumn.state === "item_3") {
                                    loColumn.state = "item_1";
                                }
                            }
                    }
                }
                Rect{
                    id: comp_5
                    Layout.alignment: Qt.AlignCenter
                    Layout.fillWidth: true
                    color: "#8b00ff"
                    Text {
                        text: "Item 2"
                        anchors.centerIn: comp_5
                    }
                    MouseArea{
                            anchors.fill:parent
                            onClicked: {
                                if (loColumn.state === "begin") {
                                    loColumn.state = "item_2";
                                }else if (loColumn.state === "item_1") {
                                    loColumn.state = "item_2";
                                }else if (loColumn.state === "item_3") {
                                    loColumn.state = "item_2";
                                }
                            }
                        }
                }
                Rect{
                    id: comp_6
                    Layout.alignment: Qt.AlignRight
                    Layout.fillWidth: true
                    color: "#8b00ff"
                    Text {
                        text: "Item 3"
                        anchors.centerIn: comp_6
                    }
                    MouseArea{
                            anchors.fill:parent
                            onClicked: {
                                if (loColumn.state === "begin") {
                                    loColumn.state = "item_3";
                                }else if (loColumn.state === "item_1") {
                                    loColumn.state = "item_3";
                                }else if (loColumn.state === "item_2") {
                                    loColumn.state = "item_3";
                                }
                            }
                        }
                }
            }
        }
        states:[
            State {
                name: "begin"
                PropertyChanges {target: text_com1; text: "Header"}
                PropertyChanges {target: name; text: "Some"}
                PropertyChanges {target: comp_4; opacity: 1}
                PropertyChanges {target:comp_5; opacity: 1}
                PropertyChanges {target:comp_6; opacity: 1}
            },
            State {
                name: "item_1"
                PropertyChanges {target: text_com1; text: "Header 1"}
                PropertyChanges {target: name; text: "Item 1 content"}
                PropertyChanges {target: comp_4; opacity: 1}
                PropertyChanges {target:comp_5; opacity: 0.5}
                PropertyChanges {target:comp_6; opacity: 0.5}
            },
            State {
                name: "item_2"
                PropertyChanges {target: text_com1; text: "Header 2"}
                PropertyChanges {target: name; text: "Item 2 content"}
                PropertyChanges {target: comp_4; opacity: 0.5}
                PropertyChanges {target:comp_5; opacity: 1}
                PropertyChanges {target:comp_6; opacity: 0.5}
            },
            State {
                name: "item_3"
                PropertyChanges {target: text_com1; text: "Header 3"}
                PropertyChanges {target: name; text: "Item 3 content"}
                PropertyChanges {target: comp_4; opacity: 0.5}
                PropertyChanges {target:comp_5; opacity: 0.5}
                PropertyChanges {target:comp_6; opacity: 1}
            } ]
        state: "begin"
        transitions: [
            Transition {
                from: "begin"
                to: "item_1"
                PropertyAnimation {
                    target: comp_5
                    property: "opacity"
                    duration: 500
                }
                PropertyAnimation {
                    target: comp_6
                    property: "opacity"
                    duration: 500
                }
            },
            Transition {
                from: "item_1"
                to: "item_2"
                PropertyAnimation {
                    target: comp_4
                    property: "opacity"
                    duration: 500
                }
                PropertyAnimation {
                    target: comp_6
                    property: "opacity"
                    duration: 500
                }
            },
            Transition {
                from: "item_2"
                to: "item_3"
                PropertyAnimation {
                    target: comp_4
                    property: "opacity"
                    duration: 500
                }
                PropertyAnimation {
                    target: comp_5
                    property: "opacity"
                    duration: 500
                }
            },
            Transition {
                from: "item_3"
                to: "begin"
                PropertyAnimation {
                    target: comp_4
                    property: "opacity"
                    duration: 500
                }
                PropertyAnimation {
                    target: comp_5
                    property: "opacity"
                    duration: 500
                }
                PropertyAnimation {
                    target: comp_6
                    property: "opacity"
                    duration: 500
                }
            }
        ]
    }

}
