import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5


Window {
    id:win
    minimumWidth: 360
    width: 360
    height: 640
    visible: true
    title: "Task_for_ListView"
    property int defMargin: 8
    Rectangle{
        anchors.fill:parent
        gradient:Gradient{
        GradientStop{position:0;color:"pink"}
        GradientStop{position:1;color:"purple"}
        }
    }
    ListModel{
        id:my_model
        ListElement{ mess:"Hi";time:"18:30"}
        ListElement{ mess:"How are u?";time:"18:45"}
        ListElement{ mess:"I'm good";time:"18:55"}
    }
    Page{
           id:page
           anchors.fill:parent
           background:nool
           footer: PageFooter {
               onNewMessage: {
                   var newMsg = {};
                   newMsg.mess = msg;
                   newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                   my_model.append(newMsg);
               }
           }

    Component{
        id:my_delegate
        MyDelegate{
            mess:model.mess
            time: model.time
            width:parent.width * 0.9
            height:60
            anchors.centerIn: win
        }
    }

    ListView{
        id:my_list
        anchors.fill:parent
        model:my_model
        delegate:my_delegate
    }


}
}
