import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.5

Item {
    id:registerscreen
    width: _root.width
    height: _root.height
    Image {
        id: registerscreenimage
        anchors.fill: parent
        source: "ApplicationImages/welcomepageimg.jpeg"
    }
    Item{
        id:loginimgrect
        width: registerscreen.width/4
        height: registerscreen.height/7
        anchors.top: registerscreen.top
        anchors.topMargin: registerscreen.height/7
        anchors.horizontalCenter: registerscreen.horizontalCenter
        Image {
            id: loginscreenimg
            anchors.fill: parent
            source: "ApplicationImages/pragna.png"
        }

    }

    Item{
        id:registerimagerect
        width:registerscreen.width
        height: registerscreen.height/3.5
        anchors.top: registerscreen.top
        anchors.horizontalCenter: registerscreen.horizontalCenter
        Image {
            id: regimage
            anchors.fill: parent
            //            source: "ApplicationImages/pragna.png"
        }
    }

    Item{
        id:registerdatarowsrect
        width:registerscreen.width/1.2
        height: registerscreen.height/1.8
        anchors.top:registerimagerect.bottom
        anchors.horizontalCenter: registerimagerect.horizontalCenter
        //        color: "#F6EFF8"
        //        border.width: 0.5
        ColumnLayout{
            id:regtxtfieldcol
            spacing:registerdatarowsrect.height/30
            anchors.top: registerdatarowsrect.top
            anchors.topMargin: registerdatarowsrect.height/10
            anchors.horizontalCenter: registerdatarowsrect.horizontalCenter

            Rectangle{
                id:fullnameinputtxtrect
                width: registerdatarowsrect.width/1.1
                height: registerdatarowsrect.height/9
                clip: true
                radius: fullnameinputtxtrect.width/20
                TextField{
                    id:fullnameinput
                    anchors.fill: parent
                    placeholderText: "Full Name"
                    font.bold: true
                    font.family: "Times New Roman"
                    font.pixelSize: fullnameinputtxtrect.width/13
                    verticalAlignment: TextInput.AlignVCenter
                    horizontalAlignment:TextInput.AlignHCenter
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#D1D5C7"
                        radius: fullnameinputtxtrect.width/20
                    }

                }
            }
            Rectangle{
                id:useridinputtxtrect
                width: registerdatarowsrect.width/1.1
                height: registerdatarowsrect.height/9
                clip: true
                radius: useridinputtxtrect.width/20
                TextField{
                    id:userinput
                    anchors.fill: parent
                    placeholderText: "User id"
                    font.bold: true
                    font.family: "Times New Roman"
                    font.pixelSize: useridinputtxtrect.width/13
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
                id:emailinputtxtrect
                width: registerdatarowsrect.width/1.1
                height: registerdatarowsrect.height/9
                clip: true
                radius: emailinputtxtrect.width/20
                TextField{
                    id:emailuserinput
                    anchors.fill: parent
                    placeholderText: "E-Mail"
                    font.bold: true
                    font.family: "Times New Roman"
                    font.pixelSize: emailinputtxtrect.width/13
                    verticalAlignment: TextInput.AlignVCenter
                    horizontalAlignment:TextInput.AlignHCenter
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#D1D5C7"
                        radius: emailinputtxtrect.width/20
                    }

                }
            }
            Rectangle{
                id:passwordinputtxtrect
                width: registerdatarowsrect.width/1.1
                height: registerdatarowsrect.height/9
                clip: true
                radius: passwordinputtxtrect.width/20
                color: "#D1D5C7"
                TextField{
                    id:passwduserinput
                    anchors.fill: parent
                    placeholderText: "Password"
                    font.bold: true
                    font.family: "Times New Roman"
                    font.pixelSize: passwordinputtxtrect.width/13
                    echoMode: TextInput.Password
                    verticalAlignment: TextInput.AlignVCenter
                    horizontalAlignment:TextInput.AlignHCenter
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#D1D5C7"
                        radius: passwordinputtxtrect.width/20

                    }

                }

            }
            Rectangle{
                id:conformpasswordinputtxtrect
                width: registerdatarowsrect.width/1.1
                height: registerdatarowsrect.height/9
                clip: true
                radius: conformpasswordinputtxtrect.width/20
                //                color: "#D1D5C7"

                TextField{
                    id:confirmpasswduserinput
                    anchors.fill: parent
                    placeholderText: "Re-Enter Password"
                    font.bold: true
                    font.family: "Times New Roman"
                    font.pixelSize: conformpasswordinputtxtrect.width/13
                    verticalAlignment: TextInput.AlignVCenter
                    horizontalAlignment:TextInput.AlignHCenter
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#D1D5C7"
                        radius: conformpasswordinputtxtrect.width/20
                    }

                }

            }
        }


        Item{
            id:useralreadybuttonrect
            width: registerdatarowsrect.width/1.6
            height: registerdatarowsrect.height/9
            //            radius: 5
            //            color: "#F6EFF8"
            anchors.top: regtxtfieldcol.bottom
            anchors.topMargin: registerdatarowsrect.height/20
            anchors.horizontalCenter: regtxtfieldcol.horizontalCenter
            Text {
                id: alreadyregistertxt
                text: "Already have an account ?"
                anchors.centerIn: parent
                font.underline: true
                font.bold: true
                font.pixelSize: useralreadybuttonrect.width/12
                font.family: "Times New Roman"
            }
            MouseArea{
                id:have_an_account_mousearea
                anchors.fill: parent
                onPressed: {
                    alreadyregistertxt.color="green"
                }
                onReleased: {
                    alreadyregistertxt.color="black"

                }
                onClicked: {
                    console.log("Registerpage already have an account button clicked")
                    _load.source="Loginpage.qml"
                    registerscreen.visible=false
                }
            }
        }


    }


    Button{
        id:create_account_button
        width: registerdatarowsrect.width/2
        height: registerdatarowsrect.height/7
        anchors.top: registerdatarowsrect.bottom
        anchors.horizontalCenter: registerdatarowsrect.horizontalCenter
        Text {
            id: submitbuttontxt
            text: "Create Account"
            color: "white"
            anchors.centerIn: parent
            font.bold: true
            font.pixelSize: create_account_button.width/7
            font.family: "Times New Roman"
        }
        background: Rectangle{
            id:button_bg_rect
            anchors.fill: parent
            radius: button_bg_rect.width/20
            color: "blue"
        }
        onPressed: {
            submitbuttontxt.color="blue"
            button_bg_rect.color="white"
        }
        onReleased: {
            submitbuttontxt.color="white"
             button_bg_rect.color="blue"
        }
        onClicked: {

            console.log("Registerpage Submit Button Clicked")
            EmployeeDatabase.storeEmployeeDeatails(fullnameinput.text,userinput.text,emailuserinput.text,passwduserinput.text,confirmpasswduserinput.text);
            if(EmployeeDatabase.messegePopQml){
                console.log("Employee Deatails Successfully Inserted")
                _load.source="Loginpage.qml"
                regisretsuccess.visible=true
                registerscreen.visible=false
            }else{
                regisrfail.visible=true
                console.log("Passwors and Confirmpassword MisMatch")
            }

        }
    }

    //    Rectangle{
    //        id:submitbutton
    //        width: registerdatarowsrect.width/2
    //        height: registerdatarowsrect.height/7
    //        color: "grey"
    //        radius: 8
    //        anchors.top: registerdatarowsrect.bottom
    //        anchors.horizontalCenter: registerdatarowsrect.horizontalCenter
    //        Text {
    //            id: submitbuttontxt
    //            text: "Create Account"
    //            anchors.centerIn: parent
    //            font.bold: true
    //            font.pixelSize: submitbutton.width/7
    //            font.family: "Times New Roman"
    //        }
    //        MouseArea{
    //            id:submitbuttonmousearea
    //            anchors.fill: parent
    //            onPressed: {
    //                submitbuttontxt.color="white"
    //            }
    //            onReleased: {
    //                submitbuttontxt.color="black"
    //            }
    //            onClicked: {

    //                console.log("Registerpage Submit Button Clicked")
    //                EmployeeDatabase.storeEmployeeDeatails(fullnameinput.text,userinput.text,emailuserinput.text,passwduserinput.text,confirmpasswduserinput.text);
    //                if(EmployeeDatabase.messegePopQml){
    //                    console.log("Employee Deatails Successfully Inserted")
    //                    _load.source="Loginpage.qml"
    //                    regisretsuccess.visible=true
    //                    registerscreen.visible=false
    //                }else{
    //                    regisrfail.visible=true
    //                    console.log("Passwors and Confirmpassword MisMatch")
    //                }

    //            }
    //        }
    //    }

    MessageDialog{
        id:regisretsuccess
        text: "Successfully Registered"

    }
    MessageDialog{
        id:regisrfail
        text: "Password and Confirm Password MisMatch"
    }

    Component.onCompleted: {
        console.log("Registerpage Construction")
    }
    Component.onDestruction: {
        console.log("Registerpage Distruction")
    }

}






















//        RowLayout{
//            id:fullnamerow
//            spacing:registerdatarowsrect.width/30
//            anchors.top: registerdatarowsrect.top
//            anchors.topMargin: registerdatarowsrect.height/30
//            Rectangle{
//                id:fullnamerect
//                width: registerdatarowsrect.width/3
//                height: registerdatarowsrect.height/9
//                radius: 5
//                color: "#E5E3D4"
//                Text {
//                    id: fullnametxt
//                    text: "Full Name"
//                    anchors.centerIn: parent
//                    font.bold: true
//                    font.pixelSize: fullnamerect.width/6
//                    font.family: "Times New Roman"
//                }

//            }
//            Rectangle{
//                id:fullnameinputtxtrect
//                width: registerdatarowsrect.width/1.6
//                height: registerdatarowsrect.height/9
//                clip: true
//                radius: fullnameinputtxtrect.width/20
//                TextField{
//                    id:fullnameinput
//                    anchors.fill: parent
//                    placeholderText: "Enter Full Name"
//                    font.bold: true
//                    font.family: "Times New Roman"
//                    font.pixelSize: fullnameinputtxtrect.width/10
//                    verticalAlignment: TextInput.AlignVCenter
//                    background: Rectangle{
//                        anchors.fill: parent
//                        color: "#D1D5C7"
//                        radius: fullnameinputtxtrect.width/20
//                    }

//                }
//            }
//        }
//        RowLayout{
//            id:useridrow
//            spacing: registerdatarowsrect.width/30
//            anchors.top: fullnamerow.top
//            anchors.topMargin: registerdatarowsrect.height/6.9
//            Rectangle{
//                id:useridrect
//                width: registerdatarowsrect.width/3
//                height: registerdatarowsrect.height/9
//                radius: 5
//                color: "#E5E3D4"
//                Text {
//                    id: useridtxt
//                    text: "Userid"
//                    anchors.centerIn: parent
//                    font.bold: true
//                    font.pixelSize: useridrect.width/6
//                    font.family: "Times New Roman"
//                }
//            }
//            Rectangle{
//                id:useridinputtxtrect
//                width: registerdatarowsrect.width/1.6
//                height: registerdatarowsrect.height/9
//                clip: true
//                radius: useridinputtxtrect.width/20
//                TextField{
//                    id:userinput
//                    anchors.fill: parent
//                    placeholderText: "Enter Userid"
//                    font.bold: true
//                    font.family: "Times New Roman"
//                    font.pixelSize: useridinputtxtrect.width/10
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
//            id:useremailrow
//            spacing: registerdatarowsrect.width/30
//            anchors.top: useridrow.top
//            anchors.topMargin: registerdatarowsrect.height/6.9
//            Rectangle{
//                id:emailidtxtrect
//                width: registerdatarowsrect.width/3
//                height: registerdatarowsrect.height/9
//                radius: 5
//                color: "#E5E3D4"
//                Text {
//                    id: emailtxt
//                    text: "E-mail"
//                    anchors.centerIn: parent
//                    font.bold: true
//                    font.pixelSize: emailidtxtrect.width/6
//                    font.family: "Times New Roman"
//                }
//            }
//            Rectangle{
//                id:emailinputtxtrect
//                width: registerdatarowsrect.width/1.6
//                height: registerdatarowsrect.height/9
//                clip: true
//                radius: emailinputtxtrect.width/20
//                TextField{
//                    id:emailuserinput
//                    anchors.fill: parent
//                    placeholderText: "Enter E-Mail"
//                    font.bold: true
//                    font.family: "Times New Roman"
//                    font.pixelSize: emailinputtxtrect.width/10
//                    verticalAlignment: TextInput.AlignVCenter
//                    background: Rectangle{
//                        anchors.fill: parent
//                        color: "#D1D5C7"
//                        radius: emailinputtxtrect.width/20
//                    }

//                }
//            }
//        }
//        RowLayout{
//            id:passwordrow
//            spacing: registerdatarowsrect.width/30
//            anchors.top: useremailrow.top
//            anchors.topMargin: registerdatarowsrect.height/6.9
//            Rectangle{
//                id:passwordtxtrect
//                width: registerdatarowsrect.width/3
//                height: registerdatarowsrect.height/9

//                radius: 5
//                color: "#E5E3D4"
//                Text {
//                    id: passwordtxt
//                    text: "Password"
//                    anchors.centerIn: parent
//                    font.bold: true
//                    font.pixelSize: passwordtxtrect.width/6
//                    font.family: "Times New Roman"
//                }

//            }
//            Rectangle{
//                id:passwordinputtxtrect
//                width: registerdatarowsrect.width/1.6
//                height: registerdatarowsrect.height/9
//                clip: true
//                radius: passwordinputtxtrect.width/20
//                color: "#D1D5C7"
//                TextField{
//                    id:passwduserinput
//                    anchors.fill: parent
//                    placeholderText: "Enter Password"
//                    font.bold: true
//                    font.family: "Times New Roman"
//                    font.pixelSize: passwordinputtxtrect.width/11
//                    echoMode: TextInput.Password
//                    verticalAlignment: TextInput.AlignVCenter
//                    background: Rectangle{
//                        anchors.fill: parent
//                        color: "#D1D5C7"
//                        radius: passwordinputtxtrect.width/20

//                    }

//                }

//            }

//        }
//        RowLayout{
//            id:conformpasswordrow
//            spacing: registerdatarowsrect.width/30
//            anchors.top: passwordrow.top
//            anchors.topMargin: registerdatarowsrect.height/6.9
//            Rectangle{
//                id:conformpasswordtxtrect
//                width: registerdatarowsrect.width/3
//                height: registerdatarowsrect.height/9
//                radius: 5
//                color: "#E5E3D4"
//                Text {
//                    id: confirmpasswordtxt
//                    text: "Confirm Password"
//                    anchors.centerIn: parent
//                    font.bold: true
//                    font.pixelSize: conformpasswordtxtrect.width/8.2
//                    font.family: "Times New Roman"
//                }

//            }
//            Rectangle{
//                id:conformpasswordinputtxtrect
//                width: registerdatarowsrect.width/1.6
//                height: registerdatarowsrect.height/9
//                clip: true
//                radius: conformpasswordinputtxtrect.width/20
//                //                color: "#D1D5C7"

//                TextField{
//                    id:confirmpasswduserinput
//                    anchors.fill: parent
//                    placeholderText: "Enter Same Password"
//                    font.bold: true
//                    font.family: "Times New Roman"
//                    font.pixelSize: conformpasswordtxtrect.width/6
//                    verticalAlignment: TextInput.AlignVCenter
//                    background: Rectangle{
//                        anchors.fill: parent
//                        color: "#D1D5C7"
//                        radius: conformpasswordinputtxtrect.width/20
//                    }

//                }

//            }

//        }
