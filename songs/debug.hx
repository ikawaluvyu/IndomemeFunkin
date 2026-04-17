import funkin.editors.charter.Charter;
import funkin.editors.character.CharacterEditor;
import funkin.backend.system.Conductor;

public var enableBotplay:Bool = false;

function update(elapsed:Float) {
	if(FlxG.keys.justPressed.SEVEN) 
		FlxG.switchState(new Charter(PlayState.SONG.meta.name, PlayState.difficulty));
	if(FlxG.keys.justPressed.EIGHT && FlxG.keys.pressed.B) 
		FlxG.switchState(new CharacterEditor(PlayState.instance.boyfriend.curCharacter));
	else if(FlxG.keys.justPressed.EIGHT && !FlxG.keys.pressed.B) 
		FlxG.switchState(new CharacterEditor(PlayState.instance.dad.curCharacter));

	FlxG.timeScale = inst.pitch = vocals.pitch = FlxG.keys.pressed.SIX ? 10 : 1;

	if(FlxG.keys.justPressed.FIVE) {
		enableBotplay = !enableBotplay;
		player.cpu = enableBotplay;
	}
}