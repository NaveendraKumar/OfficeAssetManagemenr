import QtQuick 2.0
import QtQuick.Controls 2.5

Rectangle {
    id:welcomescreen
    width: _root.width
    height:_root.height
    color: "#F2F2F2"
    Image {
        id: background
        anchors.fill: parent
        source: "ApplicationImages/welcomebackgroundimg.jpeg"
    }

    Rectangle{
        id:welcomeimgrect
        width:welcomescreen.width
        height: welcomescreen.height/1.7
        anchors.horizontalCenter: welcomescreen.horizontalCenter
        SwipeView{
            id:view
            anchors.fill: parent
            Item{
                id:img1
                Image {
                    id: welcomeimg
                    anchors.fill: parent
                    source: "ApplicationImages/welimg1.png"
                }
            }
            Item{
                id:img2
                Image {
                    id: welcomeimg2
                    anchors.fill: parent
                    source: "ApplicationImages/welimg2.png"
                }
            }
            Item{
                id:img3
                Image {
                    id: welcomeimg3
                    anchors.fill: parent
                    source: "ApplicationImages/welimg3.png"
                }
            }
        }
    }
    PageIndicator{
        id:indicater
        count:view.count
        currentIndex: view.currentIndex
        anchors.top: welcomeimgrect.bottom
        anchors.bottomMargin: 5
        anchors.horizontalCenter: welcomeimgrect.horizontalCenter
    }
    Timer{
        id:viewtimer
        running: true
        repeat: true
        interval: 3000
        onTriggered: {
            var nextIndex = (view.currentIndex + 1) % view.count
            view.setCurrentIndex(nextIndex)
        }

    }

    Button{
        id:signup
        width: welcomescreen.width/1.3
        height: welcomescreen.height/12
        Text {
            id: signuptxt
            text: "Sign up"
//            font.bold: true
            font.pixelSize: signup.width/10
            font.family: "Times New Roman"
            anchors.centerIn: parent
//            color: "blue"
        }
        anchors.top: indicater.bottom
        anchors.topMargin: welcomescreen.height/18
        anchors.horizontalCenter: indicater.horizontalCenter
        background: Rectangle{
            id:signuprect
            anchors.fill: parent
             color: "#FFD181"
            radius: signup.width/14
        }
        onPressed: {
            signuprect.color="#EEE7CE"
            signuptxt.color="blue"
        }
        onReleased: {
            signuprect.color="#064439"
            signuptxt.color="black"
        }
        onClicked: {
            console.log("welcomepage signup button clicked")
            _load.source="Registerpage.qml"
            welcomescreen.visible=false
        }
    }

    Button{
        id:signin
        width: welcomescreen.width/1.3
        height: welcomescreen.height/12
        Text {
            id: signintxt
            text: "Sign in"
//            font.bold: true
            font.pixelSize: signin.width/10
            font.family: "Times New Roman"
            anchors.centerIn: parent
//            color: "blue"
        }
        anchors.top: signup.bottom
        anchors.topMargin: welcomescreen.height/25
        anchors.horizontalCenter: signup.horizontalCenter
        background: Rectangle{
            id:signinrect
            anchors.fill: parent
            color: "#FFD181"
            radius: signin.width/14
        }
        onPressed: {
            signinrect.color="#EEE7CE"
            signintxt.color="blue"
        }
        onReleased: {
            signinrect.color="#064439"
            signintxt.color="black"
        }
        onClicked: {
            console.log("welcomepage signin button clicked")
            _load.source="Loginpage.qml"
            welcomescreen.visible=false
        }
    }
    Component.onCompleted: {
        console.log("Welcome_page Constrution")
    }
    Component.onDestruction: {
        console.log("Welcome_page Distruction")
    }

}
















//    Rectangle{
//        id:signupbuttonrect
//        width: welcomescreen.width/2.8
//        height: welcomescreen.height/12
//        radius: signupbuttonrect.width/10
//        color: "#C5E0FB"
//        anchors.top: welcomeimgrect.bottom
//        anchors.topMargin: welcomescreen.height/22
//        anchors.horizontalCenter: welcomeimgrect.horizontalCenter

//        Text {
//            id: signupbuttontxt
//            text:"Sign up"
//            color: "#474B74"
//            anchors.centerIn: parent
//            font.bold: true
//            font.pixelSize: signupbuttonrect.width/6.5
//            font.family: "Times New Roman"
//        }
//        MouseArea{
//            id:signup_button_mousearea
//            anchors.fill: parent
//            onPressed: {
//                signupbuttonrect.color="#474B74"
//                signupbuttontxt.color="#C5E0FB"
//            }
//            onReleased: {
//                signupbuttonrect.color="#C5E0FB"
//                signupbuttontxt.color="#474B74"
//            }
//            onClicked: {
//                console.log("welcomepage signup button clicked")
//                _load.source="Registerpage.qml"
//                welcomescreen.visible=false
//            }
//        }
//    }
//    Rectangle{
//        id:signinbuttonrect
//        width: welcomescreen.width/2.8
//        height: welcomescreen.height/12
//        radius: signinbuttonrect.width/10
//        color: "#C5E0FB"
//        anchors.top: signupbuttonrect.bottom
//        anchors.topMargin: welcomescreen.height/25
//        anchors.horizontalCenter: signupbuttonrect.horizontalCenter

//        Text {
//            id: signinbuttontxt
//            text:"Sign in"
//            color: "#474B74"
//            anchors.centerIn: parent
//            font.bold: true
//            font.pixelSize: signinbuttonrect.width/6.5
//            font.family: "Times New Roman"
//        }
//        MouseArea{
//            id:signin_button_mousearea
//            anchors.fill: parent
//            onPressed: {
//                signinbuttonrect.color="#474B74"
//                signinbuttontxt.color="#C5E0FB"
//            }
//            onReleased: {
//                signinbuttonrect.color="#C5E0FB"
//                signinbuttontxt.color="#474B74"
//            }
//            onClicked: {
//                console.log("welcomepage signin button clicked")
//                _load.source="Loginpage.qml"
//                 welcomescreen.visible=false
//            }
//        }
//    }
