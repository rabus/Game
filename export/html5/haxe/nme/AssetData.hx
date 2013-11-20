package nme;


import openfl.Assets;


class AssetData {

	
	public static var className = new Map <String, Dynamic> ();
	public static var library = new Map <String, LibraryType> ();
	public static var path = new Map <String, String> ();
	public static var type = new Map <String, AssetType> ();
	
	private static var initialized:Bool = false;
	
	
	public static function initialize ():Void {
		
		if (!initialized) {
			
			path.set ("Beep", "assets/data/beep.mp3");
			type.set ("Beep", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/bg_cave.png", "assets/bg_cave.png");
			type.set ("assets/bg_cave.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/bullet.png", "assets/bullet.png");
			type.set ("assets/bullet.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/autotiles.png", "assets/data/autotiles.png");
			type.set ("assets/data/autotiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/autotiles_alt.png", "assets/data/autotiles_alt.png");
			type.set ("assets/data/autotiles_alt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/base.png", "assets/data/base.png");
			type.set ("assets/data/base.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/beep.mp3", "assets/data/beep.mp3");
			type.set ("assets/data/beep.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			path.set ("assets/data/beep.wav", "assets/data/beep.wav");
			type.set ("assets/data/beep.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("assets/data/button.png", "assets/data/button.png");
			type.set ("assets/data/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_a.png", "assets/data/button_a.png");
			type.set ("assets/data/button_a.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_b.png", "assets/data/button_b.png");
			type.set ("assets/data/button_b.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_c.png", "assets/data/button_c.png");
			type.set ("assets/data/button_c.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_down.png", "assets/data/button_down.png");
			type.set ("assets/data/button_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_left.png", "assets/data/button_left.png");
			type.set ("assets/data/button_left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_right.png", "assets/data/button_right.png");
			type.set ("assets/data/button_right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_up.png", "assets/data/button_up.png");
			type.set ("assets/data/button_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_x.png", "assets/data/button_x.png");
			type.set ("assets/data/button_x.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/button_y.png", "assets/data/button_y.png");
			type.set ("assets/data/button_y.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/courier.ttf", nme.NME_assets_data_courier_ttf);
			type.set ("assets/data/courier.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("assets/data/cursor.png", "assets/data/cursor.png");
			type.set ("assets/data/cursor.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/default.png", "assets/data/default.png");
			type.set ("assets/data/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/fontData10pt.png", "assets/data/fontData10pt.png");
			type.set ("assets/data/fontData10pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/fontData11pt.png", "assets/data/fontData11pt.png");
			type.set ("assets/data/fontData11pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/handle.png", "assets/data/handle.png");
			type.set ("assets/data/handle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/logo.png", "assets/data/logo.png");
			type.set ("assets/data/logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/logo_corners.png", "assets/data/logo_corners.png");
			type.set ("assets/data/logo_corners.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/logo_light.png", "assets/data/logo_light.png");
			type.set ("assets/data/logo_light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/nokiafc22.ttf", nme.NME_assets_data_nokiafc22_ttf);
			type.set ("assets/data/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("assets/data/stick.png", "assets/data/stick.png");
			type.set ("assets/data/stick.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/flixel.png", "assets/data/vcr/flixel.png");
			type.set ("assets/data/vcr/flixel.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/open.png", "assets/data/vcr/open.png");
			type.set ("assets/data/vcr/open.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/pause.png", "assets/data/vcr/pause.png");
			type.set ("assets/data/vcr/pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/play.png", "assets/data/vcr/play.png");
			type.set ("assets/data/vcr/play.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/record_off.png", "assets/data/vcr/record_off.png");
			type.set ("assets/data/vcr/record_off.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/record_on.png", "assets/data/vcr/record_on.png");
			type.set ("assets/data/vcr/record_on.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/restart.png", "assets/data/vcr/restart.png");
			type.set ("assets/data/vcr/restart.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/step.png", "assets/data/vcr/step.png");
			type.set ("assets/data/vcr/step.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vcr/stop.png", "assets/data/vcr/stop.png");
			type.set ("assets/data/vcr/stop.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/data/vis/bounds.png", "assets/data/vis/bounds.png");
			type.set ("assets/data/vis/bounds.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/Fonts/kenpixel.ttf", nme.NME_assets_fonts_kenpixel_ttf);
			type.set ("assets/Fonts/kenpixel.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/Fonts/kenpixel_blocks.ttf", nme.NME_assets_fonts_kenpixel_blocks_ttf);
			type.set ("assets/Fonts/kenpixel_blocks.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/Fonts/kenpixel_future.ttf", nme.NME_assets_fonts_kenpixel_future_ttf);
			type.set ("assets/Fonts/kenpixel_future.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/Fonts/kenpixel_future_square.ttf", nme.NME_assets_fonts_kenpixel_future_square_ttf);
			type.set ("assets/Fonts/kenpixel_future_square.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/Fonts/kenpixel_high.ttf", nme.NME_assets_fonts_kenpixel_high_ttf);
			type.set ("assets/Fonts/kenpixel_high.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/Fonts/kenpixel_high_square.ttf", nme.NME_assets_fonts_kenpixel_high_square_ttf);
			type.set ("assets/Fonts/kenpixel_high_square.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/Fonts/kenpixel_mini.ttf", nme.NME_assets_fonts_kenpixel_mini_ttf);
			type.set ("assets/Fonts/kenpixel_mini.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/Fonts/kenpixel_mini_square.ttf", nme.NME_assets_fonts_kenpixel_mini_square_ttf);
			type.set ("assets/Fonts/kenpixel_mini_square.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/Fonts/kenpixel_square.ttf", nme.NME_assets_fonts_kenpixel_square_ttf);
			type.set ("assets/Fonts/kenpixel_square.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("assets/Fonts/license.txt", "assets/Fonts/license.txt");
			type.set ("assets/Fonts/license.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/gfx/caveWallTiles.png", "assets/gfx/caveWallTiles.png");
			type.set ("assets/gfx/caveWallTiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/gfx/citizen.png", "assets/gfx/citizen.png");
			type.set ("assets/gfx/citizen.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/gfx/mountain.png", "assets/gfx/mountain.png");
			type.set ("assets/gfx/mountain.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/gfx/snow.png", "assets/gfx/snow.png");
			type.set ("assets/gfx/snow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/gfx/spaceman.png", "assets/gfx/spaceman.png");
			type.set ("assets/gfx/spaceman.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/gfx/wood.png", "assets/gfx/wood.png");
			type.set ("assets/gfx/wood.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/map.txt", "assets/map.txt");
			type.set ("assets/map.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/player.png", "assets/player.png");
			type.set ("assets/player.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/player_gibs.png", "assets/player_gibs.png");
			type.set ("assets/player_gibs.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/tiles.png", "assets/tiles.png");
			type.set ("assets/tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/tileset.png", "assets/tileset.png");
			type.set ("assets/tileset.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/console.png", "flixel/img/debugger/buttons/console.png");
			type.set ("flixel/img/debugger/buttons/console.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/logDebug.png", "flixel/img/debugger/buttons/logDebug.png");
			type.set ("flixel/img/debugger/buttons/logDebug.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/open.png", "flixel/img/debugger/buttons/open.png");
			type.set ("flixel/img/debugger/buttons/open.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/pause.png", "flixel/img/debugger/buttons/pause.png");
			type.set ("flixel/img/debugger/buttons/pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/play.png", "flixel/img/debugger/buttons/play.png");
			type.set ("flixel/img/debugger/buttons/play.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/record_off.png", "flixel/img/debugger/buttons/record_off.png");
			type.set ("flixel/img/debugger/buttons/record_off.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/record_on.png", "flixel/img/debugger/buttons/record_on.png");
			type.set ("flixel/img/debugger/buttons/record_on.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/restart.png", "flixel/img/debugger/buttons/restart.png");
			type.set ("flixel/img/debugger/buttons/restart.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/statsDebug.png", "flixel/img/debugger/buttons/statsDebug.png");
			type.set ("flixel/img/debugger/buttons/statsDebug.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/step.png", "flixel/img/debugger/buttons/step.png");
			type.set ("flixel/img/debugger/buttons/step.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/stop.png", "flixel/img/debugger/buttons/stop.png");
			type.set ("flixel/img/debugger/buttons/stop.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/visualDebug.png", "flixel/img/debugger/buttons/visualDebug.png");
			type.set ("flixel/img/debugger/buttons/visualDebug.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/buttons/watchDebug.png", "flixel/img/debugger/buttons/watchDebug.png");
			type.set ("flixel/img/debugger/buttons/watchDebug.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/flixel.png", "flixel/img/debugger/flixel.png");
			type.set ("flixel/img/debugger/flixel.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/debugger/windowHandle.png", "flixel/img/debugger/windowHandle.png");
			type.set ("flixel/img/debugger/windowHandle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/logo/default.png", "flixel/img/logo/default.png");
			type.set ("flixel/img/logo/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/logo/HaxeFlixel.svg", "flixel/img/logo/HaxeFlixel.svg");
			type.set ("flixel/img/logo/HaxeFlixel.svg", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("flixel/img/logo/logo.png", "flixel/img/logo/logo.png");
			type.set ("flixel/img/logo/logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/preloader/corners.png", "flixel/img/preloader/corners.png");
			type.set ("flixel/img/preloader/corners.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/preloader/light.png", "flixel/img/preloader/light.png");
			type.set ("flixel/img/preloader/light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/tile/autotiles.png", "flixel/img/tile/autotiles.png");
			type.set ("flixel/img/tile/autotiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/tile/autotiles_alt.png", "flixel/img/tile/autotiles_alt.png");
			type.set ("flixel/img/tile/autotiles_alt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/analog/base.png", "flixel/img/ui/analog/base.png");
			type.set ("flixel/img/ui/analog/base.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/analog/thumb.png", "flixel/img/ui/analog/thumb.png");
			type.set ("flixel/img/ui/analog/thumb.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/button.png", "flixel/img/ui/button.png");
			type.set ("flixel/img/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/cursor.png", "flixel/img/ui/cursor.png");
			type.set ("flixel/img/ui/cursor.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/fontData11pt.png", "flixel/img/ui/fontData11pt.png");
			type.set ("flixel/img/ui/fontData11pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/virtualpad/a.png", "flixel/img/ui/virtualpad/a.png");
			type.set ("flixel/img/ui/virtualpad/a.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/virtualpad/b.png", "flixel/img/ui/virtualpad/b.png");
			type.set ("flixel/img/ui/virtualpad/b.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/virtualpad/c.png", "flixel/img/ui/virtualpad/c.png");
			type.set ("flixel/img/ui/virtualpad/c.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/virtualpad/down.png", "flixel/img/ui/virtualpad/down.png");
			type.set ("flixel/img/ui/virtualpad/down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/virtualpad/left.png", "flixel/img/ui/virtualpad/left.png");
			type.set ("flixel/img/ui/virtualpad/left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/virtualpad/right.png", "flixel/img/ui/virtualpad/right.png");
			type.set ("flixel/img/ui/virtualpad/right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/virtualpad/up.png", "flixel/img/ui/virtualpad/up.png");
			type.set ("flixel/img/ui/virtualpad/up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/virtualpad/x.png", "flixel/img/ui/virtualpad/x.png");
			type.set ("flixel/img/ui/virtualpad/x.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/img/ui/virtualpad/y.png", "flixel/img/ui/virtualpad/y.png");
			type.set ("flixel/img/ui/virtualpad/y.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/snd/beep.wav", "flixel/snd/beep.wav");
			type.set ("flixel/snd/beep.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/snd/flixel.wav", "flixel/snd/flixel.wav");
			type.set ("flixel/snd/flixel.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/box.png", "flixel/flixel-ui/img/box.png");
			type.set ("flixel/flixel-ui/img/box.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button.png", "flixel/flixel-ui/img/button.png");
			type.set ("flixel/flixel-ui/img/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_thin.png", "flixel/flixel-ui/img/button_thin.png");
			type.set ("flixel/flixel-ui/img/button_thin.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/button_toggle.png", "flixel/flixel-ui/img/button_toggle.png");
			type.set ("flixel/flixel-ui/img/button_toggle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/check_box.png", "flixel/flixel-ui/img/check_box.png");
			type.set ("flixel/flixel-ui/img/check_box.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/check_mark.png", "flixel/flixel-ui/img/check_mark.png");
			type.set ("flixel/flixel-ui/img/check_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/chrome.png", "flixel/flixel-ui/img/chrome.png");
			type.set ("flixel/flixel-ui/img/chrome.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/chrome_flat.png", "flixel/flixel-ui/img/chrome_flat.png");
			type.set ("flixel/flixel-ui/img/chrome_flat.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/chrome_inset.png", "flixel/flixel-ui/img/chrome_inset.png");
			type.set ("flixel/flixel-ui/img/chrome_inset.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/dropdown_mark.png", "flixel/flixel-ui/img/dropdown_mark.png");
			type.set ("flixel/flixel-ui/img/dropdown_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/hilight.png", "flixel/flixel-ui/img/hilight.png");
			type.set ("flixel/flixel-ui/img/hilight.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/invis.png", "flixel/flixel-ui/img/invis.png");
			type.set ("flixel/flixel-ui/img/invis.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/radio.png", "flixel/flixel-ui/img/radio.png");
			type.set ("flixel/flixel-ui/img/radio.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/radio_dot.png", "flixel/flixel-ui/img/radio_dot.png");
			type.set ("flixel/flixel-ui/img/radio_dot.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/tab.png", "flixel/flixel-ui/img/tab.png");
			type.set ("flixel/flixel-ui/img/tab.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/img/tab_back.png", "flixel/flixel-ui/img/tab_back.png");
			type.set ("flixel/flixel-ui/img/tab_back.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("flixel/flixel-ui/xml/defaults.xml", "flixel/flixel-ui/xml/defaults.xml");
			type.set ("flixel/flixel-ui/xml/defaults.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("flixel/flixel-ui/xml/default_popup.xml", "flixel/flixel-ui/xml/default_popup.xml");
			type.set ("flixel/flixel-ui/xml/default_popup.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			
			
			initialized = true;
			
		}
		
	}
	
	
}




















class NME_assets_data_courier_ttf extends flash.text.Font { }








class NME_assets_data_nokiafc22_ttf extends flash.text.Font { }











class NME_assets_fonts_kenpixel_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_blocks_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_future_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_future_square_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_high_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_high_square_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_mini_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_mini_square_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_square_ttf extends flash.text.Font { }




































































