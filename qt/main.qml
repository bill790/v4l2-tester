import QtQuick 2.2
import QtQuick.Window 2.1
import CameraPlayer 1.0

Rectangle {
	width: Math.min(Screen.width, 800)
	height: Math.min(Screen.height, 256)
	color: "black"

	CameraPlayer {
		id: camera
		width: 360
		height: 240
	}

	Timer {
		interval: 10000
		repeat: true
		running: true
		onTriggered: camera.play = !camera.play
	}

	//NumberAnimation { target: camera; property: "width"; from: 200; to: 400; duration: 1000; easing.type: Easing.InOutQuad; running: true; loops: Animation.Infinite }
}
