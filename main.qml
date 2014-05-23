import QtQuick 2.0
import QtQuick.Particles 2.0

Loader {
  id: top

  Rectangle {                       
    width: buttonLabel.width + 20; height: buttonLabel.height + 20
    border { width: 2; color: "black" }
    color: "white"
    radius: 8
                                                                                     
    MouseArea { anchors.fill: parent; onClicked: top.source = "/system/examples/qml/samegame/samegame-desktop.qml" }                                                          
    Text {                                                                                                                                     
        id: buttonLabel; text: "Same Game"; anchors.centerIn: parent; color: "black"; font.pixelSize: 24
    }
  } 
}

