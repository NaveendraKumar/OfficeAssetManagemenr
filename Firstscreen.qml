import QtQuick 2.0

Rectangle {
    id:_firstscreen
    anchors.fill: parent
     color: "#F8E6CB"
    Rectangle{
        width: _firstscreen.width
         height: _firstscreen.height/2.2
         anchors.centerIn: parent
         color: "#F8E6CB"
         Image {
             id: togglescreenimage
             anchors.fill: parent
             source: "ApplicationImages/Logo.png"
         }
    }

    Timer{
        running: true
        interval: 5000
        onTriggered:{
            _firstscreen.visible=false
            _load.source="Welcomepage.qml"
        }

    }

    Component.onCompleted: {
        console.log("TaggleScreen(FirstScrenn) page Constructed")

    }
    Component.onDestruction: {
        console.log("TaggleScreen(FirstScrenn) page Distructed")
    }


}
