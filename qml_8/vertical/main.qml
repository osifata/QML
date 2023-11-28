import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("SvipeView_test")
    property int defMargin:10

    SwipeView {
        id: view
        currentIndex: indicator.currentIndex
        anchors.fill: parent
        orientation: Qt.Vertical

        My_Page {
            id:page_red
            bg: "red"
            Text {
                id: redd
                text: qsTr("Red page")
                anchors.centerIn: parent
                color: "white"
                font.pointSize: 16
            }
        }
        My_Page {
            id:page_green
            bg: "green"
            Text {
                id: grenn
                text: qsTr("Green page")
                anchors.centerIn: parent
                color: "white"
                font.pointSize: 16
            }
        }
        My_Page {
            id:page_yellow
            bg: "yellow"
            Text {
                id: yelloww
                text: qsTr("Yellow page")
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 16
            }
        }
    }

    PageIndicator {
        id: indicator
        interactive: true
        count: view.count
        currentIndex: view.currentIndex

        transform: Rotation{origin.x: 30; angle: 90}

        anchors.right: view.right
        anchors.verticalCenter: parent.verticalCenter
    }
}
