
var logoTweenScale:FlxTween;
var logoTweenAngle:FlxTween;

function beatHit(beat:Int) {
    titleScreenSprites.members[0].scale.set(0.45, 0.45);
    if (logoTweenScale != null) logoTweenScale.cancel();
    logoTweenScale = FlxTween.tween(titleScreenSprites.members[0].scale, {x: 0.4, y: 0.4}, 0.3, {ease: FlxEase.backOut});

    titleScreenSprites.members[0].angle = 4;
    if (beat % 2 == 1) titleScreenSprites.members[0].angle *= -1;
    if (logoTweenAngle != null) logoTweenAngle.cancel();
    logoTweenAngle = FlxTween.tween(titleScreenSprites.members[0], {angle: 0}, 0.4, {ease: FlxEase.backOut});
}