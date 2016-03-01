import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Window 2.0

ApplicationWindow {
  visible: true
  title: qsTr("Hello World")
  width: 640
  height: 480
  property ApplicationWindow win : ApplicationWindow {
    title: "hello"
    Button {
      text: "Something"
      anchors.centerIn: parent
    }
    onClosing: console.log("Called")
  }

  Button {
    anchors.left: parent.left
    text: "Open"
    onClicked: win.show();
  }

  Button {
    anchors.right: parent.right
    text: "Close"
    onClicked: {
      win.close()
    }
  }
}
