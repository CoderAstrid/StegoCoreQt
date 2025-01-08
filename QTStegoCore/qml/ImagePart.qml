import QtQuick 2.14
import QtQuick.Controls 2.14

Item {
    // Main image display area (takes remaining space)

    Rectangle {
        color: "#ff0000"
        width: parent.width
        height: parent.height  // Subtract height for toolbar and thumbnails

        anchors.top: parent.top
        //anchors.topMargin: 40  // Ensure it starts below the toolbar
        Text {
            anchors.centerIn: parent
            text: "Image Area"
        }

        // Left button (hidden by default)
        Rectangle  {
            id: leftButton
            opacity: 0  // Start with opacity 0 (hidden)
            width: 40
            height: 40
            anchors.left: parent.left
            color: "lightblue"
            anchors.verticalCenter: parent.verticalCenter
            //text: "<"
            //onClicked: {
            //    console.log("Left button clicked")
            //    previousImage()
            //}

            // MouseArea for left button hover effect
            MouseArea {
                anchors.fill: parent
                onEntered: {
                    // Animate opacity to gradually appear when mouse enters
                    leftButtonOpacityAnimation.start()
                }
                onExited: {
                    // Animate opacity to gradually hide when mouse leaves
                    leftButtonOpacityAnimation_reverse.start()
                }
                onPressed: {
                    leftButton.scale = 0.9  // Slightly scale down the button when pressed
                }
                onReleased: {
                    leftButton.scale = 1  // Reset scale after release
                }
            }

            // Opacity animation for gradual appearance
            NumberAnimation {
                id: leftButtonOpacityAnimation
                target: leftButton
                property: "opacity"
                from: 0
                to: 1
                duration: 300  // Duration for fade-in effect
                running: false
            }

            // Opacity animation for gradual disappearance
            NumberAnimation {
                id: leftButtonOpacityAnimation_reverse
                target: leftButton
                property: "opacity"
                from: 1
                to: 0
                duration: 300  // Duration for fade-out effect
                running: false
            }
        }

        // Right button (hidden by default)
        Button {
            id: rightButton
            opacity: 0  // Start with opacity 0 (hidden)
            width: 40
            height: 40
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            text: ">"
            onClicked: {
                console.log("Right button clicked")
                nextImage()
            }

            // MouseArea for right button hover effect
            MouseArea {
                anchors.fill: parent
                onEntered: {
                    // Animate opacity to gradually appear when mouse enters
                    rightButtonOpacityAnimation.start()
                }
                onExited: {
                    // Animate opacity to gradually hide when mouse leaves
                    rightButtonOpacityAnimation_reverse.start()
                }
                onPressed: {
                    rightButton.scale = 0.9  // Slightly scale down the button when pressed
                }
                onReleased: {
                    rightButton.scale = 1  // Reset scale after release
                }
            }

            // Opacity animation for gradual appearance
            NumberAnimation {
                id: rightButtonOpacityAnimation
                target: rightButton
                property: "opacity"
                from: 0
                to: 1
                duration: 300  // Duration for fade-in effect
                running: false
            }

            // Opacity animation for gradual disappearance
            NumberAnimation {
                id: rightButtonOpacityAnimation_reverse
                target: rightButton
                property: "opacity"
                from: 1
                to: 0
                duration: 300  // Duration for fade-out effect
                running: false
            }
        }
    }
}
