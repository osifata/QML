import QtQuick 2.15

Item {
    id:deleg
    property string mess: "?"
    property string time: "?"
    Rectangle{
        id:rect
        border.color:"darkgrey"
        radius:5
        anchors.fill:parent
        anchors.leftMargin: 35
        anchors.topMargin: 10
        gradient:Gradient{
        GradientStop{position:0;color:"white"}
        GradientStop{position:1;color:"pink"}
        }
        Text{
            text:mess;
            anchors.verticalCenter:rect.verticalCenter
            anchors.left: rect.left
            anchors.leftMargin: 10
        }
        Text{
            text:time;
            anchors.bottom: rect.bottom
            anchors.right:  rect.right
            anchors.rightMargin: 5
        }
    }

}
