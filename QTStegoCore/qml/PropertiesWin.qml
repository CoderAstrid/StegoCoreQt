import QtQuick 2.14
import QtQuick.Controls 2.14

Rectangle {
    width: 250
    height: parent.height
    color: "#f0f0f0"
    x: parent.width  // Initially hidden on the right side

    // Animation to slide in/out
    NumberAnimation {
        target: parent
        property: "x"
        from: parent.width
        to: 550  // Adjust the final position for sliding in
        duration: 300
        running: visible
    }

    // Display text and properties here
    Text {
        anchors.centerIn: parent
        text: "Properties Window"
        font.pixelSize: 20
    }

    // Close button
    Button {
        text: "Close"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: visible = false
    }
}
