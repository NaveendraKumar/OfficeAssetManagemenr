import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.3

Item {
    id:_loginscreen
    width: _root.width
    height:_root.height

    Rectangle{
        id:loginimgrect
        width: _loginscreen.width/4
        height: _loginscreen.height/7
        color: "#F6EFF8"
        anchors.top: _loginscreen.top
        anchors.topMargin: _loginscreen.height/6.5
        anchors.horizontalCenter: _loginscreen.horizontalCenter
        Image {
            id: loginscreenimg
            anchors.fill: parent
            source: "ApplicationImages/pragna.png"
        }

    }
    Rectangle{
        id:_logindeatailsrect
        width: _loginscreen.width/1.2
        height: _loginscreen.height/2.5
        radius: 5
        color: "#F6EFF8"
        anchors.centerIn: parent
        ColumnLayout{
            id:login_deatails_txtfield_layout
            spacing: _logindeatailsrect.height/20
            anchors.top: _logindeatailsrect.top
            anchors.topMargin: _logindeatailsrect.height/10
            anchors.horizontalCenter: _logindeatailsrect.horizontalCenter

            Rectangle{
                id:useridinputtxtrect
                width: _logindeatailsrect.width/1.1
                height: _logindeatailsrect.height/5
                clip: true
                radius: useridinputtxtrect.width/20
                color: "#D1D5C7"

                TextField{
                    id:useridtxtinput
                    anchors.fill: parent
                    font.bold: true
                    placeholderText: "User id"
                    focus: true
                    font.family: "Times New Roman"
                    font.pixelSize: useridinputtxtrect.width/15
                    verticalAlignment: TextInput.AlignVCenter
                     horizontalAlignment:TextInput.AlignHCenter
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#D1D5C7"
                        radius: useridinputtxtrect.width/20
                    }
                }
            }
            Rectangle{
                id:passwordinputtxtrect
                width: _logindeatailsrect.width/1.1
                height: _logindeatailsrect.height/5
                clip: true
                radius: passwordinputtxtrect.width/20
                color: "#D1D5C7"
                TextField{
                    id:passwordtxtinput
                    anchors.fill: parent
                    placeholderText: "Password"
                    font.bold: true
                    focus: true
                    font.family: "Times New Roman"
                    echoMode: TextInput.Password
                    font.pixelSize: passwordinputtxtrect.width/15
                    verticalAlignment: TextInput.AlignVCenter
                     horizontalAlignment:TextInput.AlignHCenter
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#D1D5C7"
                        radius: passwordinputtxtrect.width/20
                    }
                }
            }
        }

        Rectangle{
            id:newuserbuttontxtrect
            width: _logindeatailsrect.width/1.6
            height: _logindeatailsrect.height/5
            radius: 5
            color: "#F6EFF8"
            anchors.top: login_deatails_txtfield_layout.bottom
            anchors.topMargin: _logindeatailsrect.height/15
            anchors.horizontalCenter: login_deatails_txtfield_layout.horizontalCenter
            Text {
                id: newuserbuttontxt
                text: "New here? Register Now"
                anchors.centerIn: parent
                font.bold: true
                font.family: "Times New Roman"
                font.pixelSize:newuserbuttontxtrect.width/13
            }
            MouseArea{
                id:newuserbuttontectmousearea
                anchors.fill: parent
                onPressed: {
                    newuserbuttontxt.color="#FBC467"
                }
                onReleased: {
                    newuserbuttontxt.color="black"
                }

                onClicked: {
                    console.log("Loginpage NewUser Button Clicked")
                    _load.source="Registerpage.qml"
                    _loginscreen.visible=false
                }
            }
        }

        Rectangle{
            id:forgetpasswordbuttonrect
            width: _logindeatailsrect.width/1.6
            height: _logindeatailsrect.height/6
            color: "#F6EFF8"
            anchors.top:newuserbuttontxtrect.bottom
            anchors.horizontalCenter: newuserbuttontxtrect.horizontalCenter
            //            anchors.topMargin: _logindeatailsrect.height/50
            Text {
                id: forgetpasswordbuttontxt
                text:"Forget password ?"
                font.underline: true
                anchors.centerIn: parent
                font.bold: true
                font.pixelSize: forgetpasswordbuttonrect.width/13
                font.family: "Times New Roman"
            }
            MouseArea{
                id:forgetpasswordbuttonmousearea
                anchors.fill: parent
                onPressed: {
                    forgetpasswordbuttontxt.color="blue"
                }
                onReleased: {
                    forgetpasswordbuttontxt.color="black"
                }
                onClicked: {
                    console.log("LoginPage password Forget Button Clicked")
                    _load.source="Forgetpasswordpage.qml"
                    _loginscreen.visible=false

                }
            }
        }

    }

    RowLayout{
        id:buttontxtrow
        spacing: _loginscreen.width/30
        anchors.top: _logindeatailsrect.bottom
        anchors.topMargin: _loginscreen.height/30
        anchors.horizontalCenter: _logindeatailsrect.horizontalCenter
        Rectangle{
            id:backbuttontxtrect
            width: _loginscreen.width/2.8
            height: _loginscreen.height/12
            color: "grey"
            radius: backbuttontxtrect.width/10
            Text {
                id: backbuttontxt
                text: "Back"
                anchors.centerIn: parent
                font.bold: true
                font.pixelSize:backbuttontxtrect.width/6
                font.family: "Times New Roman"
            }
            MouseArea{
                id:backbuttonmousearea
                anchors.fill: parent
                onPressed: {
                    backbuttontxtrect.color="black"
                    backbuttontxt.color="white"
                }
                onReleased: {
                    backbuttontxtrect.color="grey"
                    backbuttontxt.color="black"
                }

                onClicked: {
                    console.log("Loginpage Back Button Clicked")
                    _load.source="Welcomepage.qml"
                    _loginscreen.visible=false

                }
            }
        }
        Rectangle{
            id:loginbuttonrect
            width: _loginscreen.width/2.8
            height: _loginscreen.height/12
            color: "grey"
            radius: loginbuttonrect.width/10
            Text {
                id: loginbuttontxt
                text: "Login"
                anchors.centerIn: parent
                font.bold: true
                font.pixelSize:loginbuttonrect.width/6
                font.family: "Times New Roman"
            }
            MouseArea{
                id:loginbuttonmouseareea
                anchors.fill: parent
                onPressed: {
                    loginbuttonrect.color="black"
                    loginbuttontxt.color="white"

                }
                onReleased: {
                    loginbuttonrect.color="grey"
                    loginbuttontxt.color="black"
                }

                onClicked: {
                    console.log("Loginpage Login Button Clicked")
                    EmployeeDatabase.loginVerify(useridtxtinput.text,passwordtxtinput.text);
                    if(EmployeeDatabase.messegePopQml){
                        console.log("Login Successful")
                        loginsuccess.visible=true
                    }
                    else{
                        console.log("incorrect userid and password")
                        loginfail.visible=true
                    }
                }

            }

        }
    }
    MessageDialog{
        id:loginsuccess
        text: "Login Success"
    }
    MessageDialog{
        id:loginfail
        text: "incorrect userid or password"
    }
    Component.onCompleted: {
        console.log("Loginpage Construction")
    }
    Component.onDestruction: {
        console.log("LoginPage Distruction")
    }



}




//        RowLayout{
//            id:useridrow
//            spacing: _logindeatailsrect.width/30
//            anchors.top: _logindeatailsrect.top
//            anchors.topMargin: _logindeatailsrect.height/6
//            Rectangle{
//                id:useridtxtrect
//                width: _logindeatailsrect.width/3
//                height: _logindeatailsrect.height/5
//                radius: 5
//                color: "#D1D5C7"
//                Text {
//                    id: useridtxt
//                    text: "User Id"
//                    anchors.centerIn: parent
//                    font.bold: true
//                    font.family: "Times New Roman"
//                    font.pixelSize: passwordtxtrect.width/6
//                }

//            }
//            Rectangle{
//                id:useridinputtxtrect
//                width: _logindeatailsrect.width/1.6
//                height: _logindeatailsrect.height/5
//                clip: true
//                radius: 5
//                color: "#D1D5C7"

//                TextField{
//                    id:useridtxtinput
//                    anchors.fill: parent
//                    font.bold: true
//                    placeholderText: "Enter Userid"
//                    focus: true
//                    font.family: "Times New Roman"
//                    font.pixelSize: useridinputtxtrect.width/8
//                    verticalAlignment: TextInput.AlignVCenter
//                    background: Rectangle{
//                        anchors.fill: parent
//                        color: "#D1D5C7"
//                        radius: useridinputtxtrect.width/20
//                    }
//                }
//            }
//        }
//        RowLayout{
//            id:passwordrow
//            spacing: _logindeatailsrect.width/30
//            anchors.top: useridrow.bottom
//            anchors.topMargin: _logindeatailsrect.height/15
//            Rectangle{
//                id:passwordtxtrect
//                width: _logindeatailsrect.width/3
//                height: _logindeatailsrect.height/5
//                radius: 5
//                color: "#D1D5C7"
//                Text {
//                    id: passwordtxt
//                    text: "Password"
//                    anchors.centerIn: parent
//                    font.bold: true
//                    font.family: "Times New Roman"
//                    font.pixelSize: passwordtxtrect.width/6
//                }
//            }
//            Rectangle{
//                id:passwordinputtxtrect
//                width: _logindeatailsrect.width/1.6
//                height: _logindeatailsrect.height/5
//                clip: true
//                radius: 5
//                color: "#D1D5C7"
//                TextField{
//                    id:passwordtxtinput
//                    anchors.fill: parent
//                    placeholderText: "Enter Password"
//                    font.bold: true
//                    focus: true
//                    font.family: "Times New Roman"
//                    echoMode: TextInput.Password
//                    font.pixelSize: passwordinputtxtrect.width/8
//                    verticalAlignment: TextInput.AlignVCenter
//                    background: Rectangle{
//                        anchors.fill: parent
//                        color: "#D1D5C7"
//                        radius: passwordinputtxtrect.width/20
//                    }
//                }
//            }
//        }
