
var warpShader:CustomShader = new CustomShader("warp");
warpShader.distortion = 1.2;

var camBound:FlxCamera;

function postCreate() {
    camGame.addShader(warpShader);
    tiltFollowMult *= 2;
    defaultCamAngle = 5;
    setupBound();
}

function setupBound() {
    FlxG.cameras.add(camBound = new FlxCamera(), false);
    camBound.bgColor = 0;

    var barWidth:Int = 320;

    var leftBar:FunkinSprite = new FunkinSprite().makeGraphic(barWidth, FlxG.height, FlxColor.BLACK);
    leftBar.cameras = [camBound];
    add(leftBar);

    var rightBar:FunkinSprite = new FunkinSprite().makeGraphic(barWidth, FlxG.height, FlxColor.BLACK);
    rightBar.x = FlxG.width - rightBar.width;
    rightBar.cameras = [camBound];
    add(rightBar);
}

function onEvent(event) {
    if (event.event.name == "Camera Movement") {
        defaultCamZoom = stage.defaultZoom + ((event.event.params[0] == 1) ? -0.1 : 0);
        defaultCamAngle = ((event.event.params[0] == 1) ? 0 : 5);
    }
}