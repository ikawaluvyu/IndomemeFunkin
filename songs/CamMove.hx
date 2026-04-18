public var defaultCamAngle:Float = 0;

public var tiltOffset:Float = 15;
public var tiltAngleIntensity:Float = 0.05;
public var tiltFollowMult:Float = 10;
public var tiltIsHUDlerped:Bool = false;

public var cameraMove:FlxPoint = FlxPoint.get(0, 0);
public var cameraMoveTimer:Float = 0;

function postCreate() {
    camGame.angle = defaultCamAngle;
    camZooming = true;
}

function update(elapsed:Float) {
    if (cameraMoveTimer > 0) {
		if ((cameraMoveTimer -= elapsed) < 0) {
			cameraMoveTimer = 0;
			cameraMove.set(0, 0);
		}
	}

    camGame.targetOffset.x = FlxMath.lerp(camGame.targetOffset.x, cameraMove.x, camGame.followLerp * tiltFollowMult);
    camGame.targetOffset.y = FlxMath.lerp(camGame.targetOffset.y, cameraMove.y, camGame.followLerp * tiltFollowMult);
    camGame.angle = FlxMath.lerp(camGame.angle, defaultCamAngle + (cameraMove.x * tiltAngleIntensity), camGame.followLerp * tiltFollowMult / 20);
    if (tiltIsHUDlerped) camHUD.angle = FlxMath.lerp(camHUD.angle, cameraMove.x * tiltAngleIntensity, camGame.followLerp * tiltFollowMult / 20);
}

function onPlayerHit(e) doCameraMove(e.direction, strumLines.members.indexOf(e.note.strumLine));
function onDadHit(e) doCameraMove(e.direction, strumLines.members.indexOf(e.note.strumLine));

var moveArr = [[-1, 0], [0, 1], [0, -1], [1, 0]];
function doCameraMove(direction:Int, strumLineID:Int) {
    if (curCameraTarget == strumLineID) {
        cameraMove.set(moveArr[direction][0] * tiltOffset, moveArr[direction][1] * tiltOffset);
        cameraMoveTimer = 1;
    }
}