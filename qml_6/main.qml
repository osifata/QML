import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")
    header:ToolBar{
        id:page_header
        height:40
        RowLayout{
            ToolButton{
                id:back_btn
                Text{
                text: "<"
                font.pixelSize: 24
                visible:stack_view.depth>1
                anchors.verticalCenter: parent.verticalCenter}
                onClicked: {stack_view.pop()}
            }
            Text{
                id:header_page_text
                anchors.centerIn: page_header
            }
        }
    }
    property int defMargin:10

    StackView{
        id:stack_view
        anchors.fill: parent
        initialItem: page_red
    }
    My_Page {
        id:page_red
        bg: "red"
        btext1: "To_Green"
        btext2: "To_Yellow"
        onButtonClicked1: {
          stack_view.push(page_green)
        }
        onButtonClicked2: {
          stack_view.push(page_yellow)
        }
    }
    My_Page {
        id:page_green
        visible: false
        bg: "green"
        btext1: "To_Yellow"
        btext2: "To_Red"
        onButtonClicked1: {
          stack_view.push(page_yellow)
        }
        onButtonClicked2: {
          stack_view.pop(page_red)
        }
    }
    My_Page {
        id:page_yellow
        visible: false
        bg: "yellow"
        btext1: "To_Red"
        btext2: "To_Green"
        onButtonClicked1: {
          stack_view.pop(page_red)
        }
        onButtonClicked2: {
          stack_view.push(page_green)
        }
    }
}
