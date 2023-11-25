import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Page{
    id:root
    property alias bg:back_fon.color
    property alias btext1:btn.text
    property alias btext2:btn1.text
    signal buttonClicked1();
    signal buttonClicked2();

    background: Rectangle{
        id:back_fon
    }
    Button {
        id:btn
        anchors.right: parent.right
        anchors.bottom: btn1.top
        anchors.margins: defMargin
        onClicked: {
            root.buttonClicked1()
        }
    }
    Button {
        id:btn1
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        onClicked: {
            root.buttonClicked2()
        }
    }
}
