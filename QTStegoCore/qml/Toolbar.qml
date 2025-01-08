// Toolbar.qml

import QtQuick 2.14
import QtQuick.Controls 2.14

Item {
    width: parent.width
    height: 40

    Rectangle {
        width: parent.width
        height: 40
        color: "#000000"  // Title bar background color

        Row {
            anchors.centerIn: parent
            spacing: 10
            anchors.verticalCenter: parent.verticalCenter

            // Toolbar buttons with icons and text tooltips
            Button {
                width: 40
                height: 40
                ToolTip.text: "Previous Image"
                Image {
                    source: "previous-icon.png"  // Replace with your icon path
                    width: 20
                    height: 20
                    anchors.centerIn: parent
                }
            }

            Button {
                width: 40
                height: 40
                ToolTip.text: "Next Image"
                Image {
                    source: "next-icon.png"  // Replace with your icon path
                    width: 20
                    height: 20
                    anchors.centerIn: parent
                }
            }

            // Add more buttons as needed...
        }
    }
}
