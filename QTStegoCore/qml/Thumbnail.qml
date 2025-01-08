import QtQuick 2.14
import QtQuick.Controls 2.14

Item {
    width: parent.width
    height: 100
    anchors.bottom: parent.bottom

    Rectangle {
        color: "#f0f0f0"
        width: parent.width
        height: 100

        Row {
            spacing: 10
            anchors.centerIn: parent

            Repeater {
                model: 5  // Example for 5 thumbnails
                Rectangle {
                    width: 80
                    height: 80
                    color: "lightgray"
                    Text { anchors.centerIn: parent; text: "Thumb" }
                }
            }
        }
    }
}
