import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 600
    height: 600
    visible: true
    title: qsTr("Component")
    My_comp {
        id: head
        width: 300
        height: 150
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
    }

    My_comp {
        id: body
        width: 200
        height: 200
        color: "yellowgreen"
        anchors.top: head.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    My_comp {
        id: leftLeg
        width: 50
        height: 200
        anchors.left: body.left
        anchors.top: body.bottom
    }

    My_comp {
        id: rightLeg
        width: 50
        height: 200
        anchors.right: body.right
        anchors.top: body.bottom
    }

    My_comp {
        id: leftArmClo
        width: 130
        height: 50
        color: "yellowgreen"
        anchors.top: head.bottom
        anchors.right: body.left
    }
    My_comp {
        id: rightArmClo
        width: 130
        height: 50
        color: "yellowgreen"
        anchors.top: head.bottom
        anchors.left: body.right
    }
    My_comp {
        id: leftArm
        anchors.top: leftArmClo.bottom
        anchors.left: leftArmClo.left
    }
    My_comp {
        id: rightArm
        anchors.top: rightArmClo.bottom
        anchors.right: rightArmClo.right
    }

}

