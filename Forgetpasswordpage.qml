import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.3

Item {
    id:forget_password_screen
    width: _root.width
    height: _root.height

    Rectangle{
        id:forget_password_img_rect
        width:forget_password_screen.width/4
        height: forget_password_screen.height/7
        anchors.top: forget_password_screen.top
        anchors.topMargin:forget_password_screen.height/5
        anchors.horizontalCenter: forget_password_screen.horizontalCenter
        color: "#F6EFF8"
        Image {
            id: registerscreenimage
            anchors.fill: parent
            source: "ApplicationImages/pragna.png"
        }
    }

    Rectangle{
        id:forget_password_data_columns_rect
        width: forget_password_screen.width/1.2
        height: forget_password_screen.height/2.8
        anchors.top: forget_password_img_rect.bottom
//        anchors.topMargin: forget_password_screen.height/35
        anchors.horizontalCenter: forget_password_img_rect.horizontalCenter
        color: "#F6EFF8"
//        border.width: 0.5

        ColumnLayout{
            id:forget_txtfield_col
            spacing:forget_password_data_columns_rect.height/20
            anchors.top: forget_password_data_columns_rect.top
            anchors.topMargin: forget_password_data_columns_rect.height/10
            anchors.horizontalCenter: forget_password_data_columns_rect.horizontalCenter
            Rectangle{
                id:useridinputtxtrect
                width: forget_password_data_columns_rect.width/1.1
                height: forget_password_data_columns_rect.height/5
                clip: true
                radius: useridinputtxtrect.width/20
                TextField{
                    id:useridtxtinput
                    anchors.fill: parent
                    placeholderText: "Userid"
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
                id:nameinputtxtrect
                width: forget_password_data_columns_rect.width/1.1
                height: forget_password_data_columns_rect.height/5
                clip: true
                radius: nameinputtxtrect.width/20
                //                color: "#D1D5C7"
                TextField{
                    id:nametxtinput
                    anchors.fill: parent
                    placeholderText: "Full Name"
                    font.bold: true
                    font.family: "Times New Roman"
                    font.pixelSize: nameinputtxtrect.width/13
                    verticalAlignment: TextInput.AlignVCenter
                    horizontalAlignment:TextInput.AlignHCenter
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#D1D5C7"
                        radius: nameinputtxtrect.width/20
                    }

                }

            }
            Rectangle{
                id:email_input_txt_rect
                width: forget_password_data_columns_rect.width/1.1
                height: forget_password_data_columns_rect.height/5
                clip: true
                radius: email_input_txt_rect.width/20
                color: "#D1D5C7"
                TextField{
                    id:email_txt_input
                    anchors.fill: parent
                    placeholderText: "E-mail"
                    font.bold: true
                    font.family: "Times New Roman"
                    font.pixelSize: email_input_txt_rect.width/13
                    verticalAlignment: TextInput.AlignVCenter
                    horizontalAlignment:TextInput.AlignHCenter
                    background: Rectangle{
                        anchors.fill: parent
                        color: "#D1D5C7"
                        radius: email_input_txt_rect.width/20

                    }

                }

            }
        }

    }

    RowLayout{
        id:buttonrowlayout
        spacing: forget_password_screen.width/30
        anchors.top: forget_password_data_columns_rect.bottom
        anchors.topMargin: forget_password_screen.height/30
        anchors.horizontalCenter: forget_password_data_columns_rect.horizontalCenter
        Rectangle{
            id:backbutton
            width: forget_password_screen.width/2.8
            height: forget_password_screen.height/12
            radius: backbutton.width/10
            color: "grey"
            Text {
                id: backbuttontxt
                text: "Back"
                anchors.centerIn: parent
                font.bold: true
                font.pixelSize:backbutton.width/6
                font.family: "Times New Roman"
            }
            MouseArea{
                id:backbuttonmousearea
                anchors.fill: parent
                onPressed: {
                    backbutton.color="black"
                    backbuttontxt.color="white"
                }
                onReleased: {
                    backbutton.color="grey"
                    backbuttontxt.color="black"
                }
                onClicked: {
                    console.log("Forgetpassword back button clicked")
                    _load.source="Loginpage.qml"
                    forget_password_screen.visible=false
                }
            }
        }
        Rectangle{
            id:submitbutton
            width: forget_password_screen.width/2.8
            height: forget_password_screen.height/12
            radius: submitbutton.width/10
            color: "grey"
            Text {
                id: submitbuttontxt
                text: "Submit"
                anchors.centerIn: parent
                font.bold: true
                font.pixelSize:submitbutton.width/6
                font.family: "Times New Roman"
            }
            MouseArea{
                id:submit_button_mousearea
                anchors.fill: parent
                onPressed: {
                    submitbutton.color="black"
                    submitbuttontxt.color="white"
                }
                onReleased: {
                    submitbutton.color="grey"
                    submitbuttontxt.color="black"
                }
                onClicked: {
                    console.log("Forgetpassword submit button clicked")
                    EmployeeDatabase.forgetPasswordVerify(useridtxtinput.text,nametxtinput.text,email_txt_input.text);
                    if(EmployeeDatabase.messegePopQml){
                        console.log("Valid Deatails")
                        console.log("password=")
                        deatailsvalid.visible=true
                    }else{
                        console.log("Invalid Deatails")
                        deatailsinvalid.visible=true
                    }
                }
            }
        }
    }
    MessageDialog{
        id:deatailsvalid
        text: ""
    }
    MessageDialog{
        id:deatailsinvalid
        text: "invalid Details"
    }

    Component.onCompleted: {
        console.log("Forgetpassword_Screen Construction")
    }
    Component.onDestruction: {
        console.log("Forgetpassword_Screen Distruction")
    }
}














//        RowLayout{
//            id:useridrow
//            spacing: forget_password_data_columns_rect.width/30
//            anchors.top: forget_password_data_columns_rect.top
//            anchors.topMargin: forget_password_data_columns_rect.height/10
//            Rectangle{
//                id:useridrect
//                width: forget_password_data_columns_rect.width/3
//                height: forget_password_data_columns_rect.height/5
//                radius: 5
//                color: "#E5E3D4"

//                Text {
//                    id: useridtxt
//                    text: "User id"
//                    anchors.centerIn: parent
//                    font.bold: true
//                    font.pixelSize: useridrect.width/6
//                    font.family: "Times New Roman"
//                }
//            }
//            Rectangle{
//                id:useridinputtxtrect
//                width: forget_password_data_columns_rect.width/1.6
//                height: forget_password_data_columns_rect.height/5
//                clip: true
//                radius: useridinputtxtrect.width/20
//                TextField{
//                    id:useridtxtinput
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
//            id:namerow
//            spacing: forget_password_data_columns_rect.width/30
//            anchors.top: useridrow.bottom
//            anchors.topMargin: forget_password_data_columns_rect.height/20
//            Rectangle{
//                id:namerect
//                width: forget_password_data_columns_rect.width/3
//                height: forget_password_data_columns_rect.height/5
//                radius: 5
//                color: "#E5E3D4"
//                Text {
//                    id: nametxt
//                    text:"Name"
//                    anchors.centerIn: parent
//                    font.bold: true
//                    font.pixelSize: namerect.width/6
//                    font.family: "Times New Roman"
//                }
//            }
//            Rectangle{
//                id:nameinputtxtrect
//                width: forget_password_data_columns_rect.width/1.6
//                height: forget_password_data_columns_rect.height/5
//                clip: true
//                radius: nameinputtxtrect.width/20
//                //                color: "#D1D5C7"
//                TextField{
//                    id:nametxtinput
//                    anchors.fill: parent
//                    placeholderText: "Enter Full Name"
//                    font.bold: true
//                    font.family: "Times New Roman"
//                    font.pixelSize: nameinputtxtrect.width/10
//                    verticalAlignment: TextInput.AlignVCenter
//                    background: Rectangle{
//                        anchors.fill: parent
//                        color: "#D1D5C7"
//                        radius: nameinputtxtrect.width/20
//                    }

//                }

//            }
//        }
//        RowLayout{
//            id:emailrow
//            spacing: forget_password_data_columns_rect.width/30
//            anchors.top: namerow.bottom
//            anchors.topMargin: forget_password_data_columns_rect.height/20
//            Rectangle{
//                id:email_txt_rect
//                width: forget_password_data_columns_rect.width/3
//                height: forget_password_data_columns_rect.height/5
//                radius: 5
//                color: "#E5E3D4"
//                Text {
//                    id: email_txt
//                    text:"E-Mail"
//                    anchors.centerIn: parent
//                    font.bold: true
//                    font.pixelSize: email_txt_rect.width/6
//                    font.family: "Times New Roman"
//                }
//            }
//            Rectangle{
//                id:email_input_txt_rect
//                width: forget_password_data_columns_rect.width/1.6
//                height: forget_password_data_columns_rect.height/5
//                clip: true
//                radius: email_input_txt_rect.width/20
//                color: "#D1D5C7"
//                TextField{
//                    id:email_txt_input
//                    anchors.fill: parent
//                    placeholderText: "Enter E-mail"
//                    font.bold: true
//                    font.family: "Times New Roman"
//                    font.pixelSize: email_input_txt_rect.width/10
//                    verticalAlignment: TextInput.AlignVCenter
//                    background: Rectangle{
//                        anchors.fill: parent
//                        color: "#D1D5C7"
//                        radius: email_input_txt_rect.width/20

//                    }

//                }

//            }

//        }
