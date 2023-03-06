import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5


ApplicationWindow {
    id:_root
    width: 360
    height: 640
    visible: true
    color: "#F6EFF8"
    //    color: "black"
    title: qsTr("Mobile Application")

    Loader{
        id:_load
    }

            Firstscreen{

            }
//            Welcomepage{

//            }

//            Registerpage{

//            }

//        Loginpage{

//        }

//    Forgetpasswordpage{

//    }

    Component.onCompleted: {
        console.log("Mainpage Construction")
    }
    Component.onDestruction: {
        console.log("Mainpage Distruction")
    }


}
