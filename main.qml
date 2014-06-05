import QtQuick 2.0
import QtQuick.Particles 2.0

Loader {
  id: top

  Rectangle {                       
    id: b1
    width: buttonLabel.width + 20; height: buttonLabel.height + 20; x: 10; y: 10
    border { width: 2; color: "black" }
    color: "white"
    radius: 8

    MouseArea { anchors.fill: parent; onClicked: top.source = "/system/examples/qml/samegame/samegame-desktop.qml" }                                                          
    Text {                                                                                                                                     
        id: buttonLabel; text: "Same Game"; anchors.centerIn: parent; color: "black"; font.pixelSize: 24
    }
  } 
  Rectangle {
    id: b2
    width: buttonLabel2.width + 20; height: buttonLabel.height + 20; x: 10; y: 20 + b1.height
    border { width: 2; color: "black" }
    color: "white"
    radius: 8

    MouseArea { anchors.fill: parent; onClicked: command.start("setprop sys.ui.config kivy") }
    Text {
        id: buttonLabel2; text: "Switch to Kivy"; anchors.centerIn: parent; color: "black"; font.pixelSize: 24
    }
  }
  Rectangle {
    width: buttonLabel3.width + 20; height: buttonLabel.height + 20; x: 10; y: 30 + b1.height + b2.height
    border { width: 2; color: "black" }
    color: "white"
    radius: 8

    MouseArea { anchors.fill: parent; onClicked: power.powerOff() }
    Text {
        id: buttonLabel3; text: "Power Off"; anchors.centerIn: parent; color: "black"; font.pixelSize: 24
    }
  }
}

