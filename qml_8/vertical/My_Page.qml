import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Page{
    id:root
    property alias bg:back_fon.color

    background: Rectangle{
        id:back_fon
    }
}
