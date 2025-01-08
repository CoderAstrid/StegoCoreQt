import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.12

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Image Viewer"

    // Property for controlling visibility of properties window
    property bool propertiesVisible: false

    Item  {
        width: parent.width
        height: parent.height
        // Use the custom Toolbar component and place it at the top
        Toolbar {
            width: parent.width
            height: 40
            anchors.top: parent.top
        }

        ImagePart{
            width: parent.width
            height: parent.height - 140  // Subtract height for toolbar and thumbnails

            anchors.top: parent.top
            anchors.topMargin: 40  // Ensure it starts below the toolbar
        }
        // Properties window component (slides from the right)
        PropertiesWin {
            id: propertiesWindow
            visible: propertiesVisible
            anchors.right: parent.right
        }

        Thumbnail {
            width: parent.width
            height: 100  // Adjust height of thumbnail strip
            anchors.bottom: parent.bottom
        }

        // Button to toggle properties visibility
        /*
        Button {
            text: "Properties"
            anchors.top: parent.top
            anchors.right: parent.right
            onClicked: propertiesVisible = !propertiesVisible // Toggle the properties window
        }
        */
    }
}
