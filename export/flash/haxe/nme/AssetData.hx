package nme;


import openfl.Assets;


class AssetData {

	
	public static var className = new #if haxe3 Map <String, #else Hash <#end Dynamic> ();
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();
	
	private static var initialized:Bool = false;
	
	
	public static function initialize ():Void {
		
		if (!initialized) {
			
			className.set ("Beep", nme.NME_assets_data_beep_mp3);
			type.set ("Beep", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("assets/bg_cave.png", nme.NME_assets_bg_cave_png);
			type.set ("assets/bg_cave.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/bullet.png", nme.NME_assets_bullet_png);
			type.set ("assets/bullet.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/autotiles.png", nme.NME_assets_data_autotiles_png);
			type.set ("assets/data/autotiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/autotiles_alt.png", nme.NME_assets_data_autotiles_alt_png);
			type.set ("assets/data/autotiles_alt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/base.png", nme.NME_assets_data_base_png);
			type.set ("assets/data/base.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/beep.mp3", nme.NME_assets_data_beep_mp4);
			type.set ("assets/data/beep.mp3", Reflect.field (AssetType, "music".toUpperCase ()));
			className.set ("assets/data/button.png", nme.NME_assets_data_button_png);
			type.set ("assets/data/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_a.png", nme.NME_assets_data_button_a_png);
			type.set ("assets/data/button_a.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_b.png", nme.NME_assets_data_button_b_png);
			type.set ("assets/data/button_b.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_c.png", nme.NME_assets_data_button_c_png);
			type.set ("assets/data/button_c.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_down.png", nme.NME_assets_data_button_down_png);
			type.set ("assets/data/button_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_left.png", nme.NME_assets_data_button_left_png);
			type.set ("assets/data/button_left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_right.png", nme.NME_assets_data_button_right_png);
			type.set ("assets/data/button_right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_up.png", nme.NME_assets_data_button_up_png);
			type.set ("assets/data/button_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_x.png", nme.NME_assets_data_button_x_png);
			type.set ("assets/data/button_x.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/button_y.png", nme.NME_assets_data_button_y_png);
			type.set ("assets/data/button_y.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/courier.ttf", nme.NME_assets_data_courier_ttf);
			type.set ("assets/data/courier.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/data/cursor.png", nme.NME_assets_data_cursor_png);
			type.set ("assets/data/cursor.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/default.png", nme.NME_assets_data_default_png);
			type.set ("assets/data/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/fontData10pt.png", nme.NME_assets_data_fontdata10pt_png);
			type.set ("assets/data/fontData10pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/fontData11pt.png", nme.NME_assets_data_fontdata11pt_png);
			type.set ("assets/data/fontData11pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/handle.png", nme.NME_assets_data_handle_png);
			type.set ("assets/data/handle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/logo.png", nme.NME_assets_data_logo_png);
			type.set ("assets/data/logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/logo_corners.png", nme.NME_assets_data_logo_corners_png);
			type.set ("assets/data/logo_corners.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/logo_light.png", nme.NME_assets_data_logo_light_png);
			type.set ("assets/data/logo_light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/nokiafc22.ttf", nme.NME_assets_data_nokiafc22_ttf);
			type.set ("assets/data/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("assets/data/stick.png", nme.NME_assets_data_stick_png);
			type.set ("assets/data/stick.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/flixel.png", nme.NME_assets_data_vcr_flixel_png);
			type.set ("assets/data/vcr/flixel.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/open.png", nme.NME_assets_data_vcr_open_png);
			type.set ("assets/data/vcr/open.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/pause.png", nme.NME_assets_data_vcr_pause_png);
			type.set ("assets/data/vcr/pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/play.png", nme.NME_assets_data_vcr_play_png);
			type.set ("assets/data/vcr/play.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/record_off.png", nme.NME_assets_data_vcr_record_off_png);
			type.set ("assets/data/vcr/record_off.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/record_on.png", nme.NME_assets_data_vcr_record_on_png);
			type.set ("assets/data/vcr/record_on.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/restart.png", nme.NME_assets_data_vcr_restart_png);
			type.set ("assets/data/vcr/restart.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/step.png", nme.NME_assets_data_vcr_step_png);
			type.set ("assets/data/vcr/step.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vcr/stop.png", nme.NME_assets_data_vcr_stop_png);
			type.set ("assets/data/vcr/stop.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/data/vis/bounds.png", nme.NME_assets_data_vis_bounds_png);
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
			className.set ("assets/Fonts/license.txt", nme.NME_assets_fonts_license_txt);
			type.set ("assets/Fonts/license.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("assets/gfx/caveWallTiles.png", nme.NME_assets_gfx_cavewalltiles_png);
			type.set ("assets/gfx/caveWallTiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/gfx/citizen.png", nme.NME_assets_gfx_citizen_png);
			type.set ("assets/gfx/citizen.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/gfx/mountain.png", nme.NME_assets_gfx_mountain_png);
			type.set ("assets/gfx/mountain.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/gfx/snow.png", nme.NME_assets_gfx_snow_png);
			type.set ("assets/gfx/snow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/gfx/spaceman.png", nme.NME_assets_gfx_spaceman_png);
			type.set ("assets/gfx/spaceman.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/gfx/wood.png", nme.NME_assets_gfx_wood_png);
			type.set ("assets/gfx/wood.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/HaxeFlixel.svg", nme.NME_assets_haxeflixel_svg);
			type.set ("assets/HaxeFlixel.svg", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("assets/map.txt", nme.NME_assets_map_txt);
			type.set ("assets/map.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("assets/player.png", nme.NME_assets_player_png);
			type.set ("assets/player.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/player_gibs.png", nme.NME_assets_player_gibs_png);
			type.set ("assets/player_gibs.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/tiles.png", nme.NME_assets_tiles_png);
			type.set ("assets/tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("assets/tileset.png", nme.NME_assets_tileset_png);
			type.set ("assets/tileset.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/console.png", nme.NME_flixel_img_debugger_buttons_console_png);
			type.set ("flixel/img/debugger/buttons/console.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/logDebug.png", nme.NME_flixel_img_debugger_buttons_logdebug_png);
			type.set ("flixel/img/debugger/buttons/logDebug.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/open.png", nme.NME_flixel_img_debugger_buttons_open_png);
			type.set ("flixel/img/debugger/buttons/open.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/pause.png", nme.NME_flixel_img_debugger_buttons_pause_png);
			type.set ("flixel/img/debugger/buttons/pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/play.png", nme.NME_flixel_img_debugger_buttons_play_png);
			type.set ("flixel/img/debugger/buttons/play.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/record_off.png", nme.NME_flixel_img_debugger_buttons_record_off_png);
			type.set ("flixel/img/debugger/buttons/record_off.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/record_on.png", nme.NME_flixel_img_debugger_buttons_record_on_png);
			type.set ("flixel/img/debugger/buttons/record_on.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/restart.png", nme.NME_flixel_img_debugger_buttons_restart_png);
			type.set ("flixel/img/debugger/buttons/restart.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/statsDebug.png", nme.NME_flixel_img_debugger_buttons_statsdebug_png);
			type.set ("flixel/img/debugger/buttons/statsDebug.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/step.png", nme.NME_flixel_img_debugger_buttons_step_png);
			type.set ("flixel/img/debugger/buttons/step.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/stop.png", nme.NME_flixel_img_debugger_buttons_stop_png);
			type.set ("flixel/img/debugger/buttons/stop.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/visualDebug.png", nme.NME_flixel_img_debugger_buttons_visualdebug_png);
			type.set ("flixel/img/debugger/buttons/visualDebug.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/buttons/watchDebug.png", nme.NME_flixel_img_debugger_buttons_watchdebug_png);
			type.set ("flixel/img/debugger/buttons/watchDebug.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/flixel.png", nme.NME_flixel_img_debugger_flixel_png);
			type.set ("flixel/img/debugger/flixel.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/debugger/windowHandle.png", nme.NME_flixel_img_debugger_windowhandle_png);
			type.set ("flixel/img/debugger/windowHandle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/logo/default.png", nme.NME_flixel_img_logo_default_png);
			type.set ("flixel/img/logo/default.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/logo/HaxeFlixel.svg", nme.NME_flixel_img_logo_haxeflixel_svg);
			type.set ("flixel/img/logo/HaxeFlixel.svg", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("flixel/img/logo/logo.png", nme.NME_flixel_img_logo_logo_png);
			type.set ("flixel/img/logo/logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/preloader/corners.png", nme.NME_flixel_img_preloader_corners_png);
			type.set ("flixel/img/preloader/corners.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/preloader/light.png", nme.NME_flixel_img_preloader_light_png);
			type.set ("flixel/img/preloader/light.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/tile/autotiles.png", nme.NME_flixel_img_tile_autotiles_png);
			type.set ("flixel/img/tile/autotiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/tile/autotiles_alt.png", nme.NME_flixel_img_tile_autotiles_alt_png);
			type.set ("flixel/img/tile/autotiles_alt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/analog/base.png", nme.NME_flixel_img_ui_analog_base_png);
			type.set ("flixel/img/ui/analog/base.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/analog/thumb.png", nme.NME_flixel_img_ui_analog_thumb_png);
			type.set ("flixel/img/ui/analog/thumb.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/button.png", nme.NME_flixel_img_ui_button_png);
			type.set ("flixel/img/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/cursor.png", nme.NME_flixel_img_ui_cursor_png);
			type.set ("flixel/img/ui/cursor.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/fontData11pt.png", nme.NME_flixel_img_ui_fontdata11pt_png);
			type.set ("flixel/img/ui/fontData11pt.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/virtualpad/a.png", nme.NME_flixel_img_ui_virtualpad_a_png);
			type.set ("flixel/img/ui/virtualpad/a.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/virtualpad/b.png", nme.NME_flixel_img_ui_virtualpad_b_png);
			type.set ("flixel/img/ui/virtualpad/b.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/virtualpad/c.png", nme.NME_flixel_img_ui_virtualpad_c_png);
			type.set ("flixel/img/ui/virtualpad/c.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/virtualpad/down.png", nme.NME_flixel_img_ui_virtualpad_down_png);
			type.set ("flixel/img/ui/virtualpad/down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/virtualpad/left.png", nme.NME_flixel_img_ui_virtualpad_left_png);
			type.set ("flixel/img/ui/virtualpad/left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/virtualpad/right.png", nme.NME_flixel_img_ui_virtualpad_right_png);
			type.set ("flixel/img/ui/virtualpad/right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/virtualpad/up.png", nme.NME_flixel_img_ui_virtualpad_up_png);
			type.set ("flixel/img/ui/virtualpad/up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/virtualpad/x.png", nme.NME_flixel_img_ui_virtualpad_x_png);
			type.set ("flixel/img/ui/virtualpad/x.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/img/ui/virtualpad/y.png", nme.NME_flixel_img_ui_virtualpad_y_png);
			type.set ("flixel/img/ui/virtualpad/y.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/snd/beep.wav", nme.NME_flixel_snd_beep_wav);
			type.set ("flixel/snd/beep.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("flixel/snd/flixel.wav", nme.NME_flixel_snd_flixel_wav);
			type.set ("flixel/snd/flixel.wav", Reflect.field (AssetType, "sound".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/box.png", nme.NME_flixel_flixel_ui_img_box_png);
			type.set ("flixel/flixel-ui/img/box.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/button.png", nme.NME_flixel_flixel_ui_img_button_png);
			type.set ("flixel/flixel-ui/img/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/button_thin.png", nme.NME_flixel_flixel_ui_img_button_thin_png);
			type.set ("flixel/flixel-ui/img/button_thin.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/button_toggle.png", nme.NME_flixel_flixel_ui_img_button_toggle_png);
			type.set ("flixel/flixel-ui/img/button_toggle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/check_box.png", nme.NME_flixel_flixel_ui_img_check_box_png);
			type.set ("flixel/flixel-ui/img/check_box.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/check_mark.png", nme.NME_flixel_flixel_ui_img_check_mark_png);
			type.set ("flixel/flixel-ui/img/check_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/chrome.png", nme.NME_flixel_flixel_ui_img_chrome_png);
			type.set ("flixel/flixel-ui/img/chrome.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/chrome_flat.png", nme.NME_flixel_flixel_ui_img_chrome_flat_png);
			type.set ("flixel/flixel-ui/img/chrome_flat.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/chrome_inset.png", nme.NME_flixel_flixel_ui_img_chrome_inset_png);
			type.set ("flixel/flixel-ui/img/chrome_inset.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/dropdown_mark.png", nme.NME_flixel_flixel_ui_img_dropdown_mark_png);
			type.set ("flixel/flixel-ui/img/dropdown_mark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/hilight.png", nme.NME_flixel_flixel_ui_img_hilight_png);
			type.set ("flixel/flixel-ui/img/hilight.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/invis.png", nme.NME_flixel_flixel_ui_img_invis_png);
			type.set ("flixel/flixel-ui/img/invis.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/radio.png", nme.NME_flixel_flixel_ui_img_radio_png);
			type.set ("flixel/flixel-ui/img/radio.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/radio_dot.png", nme.NME_flixel_flixel_ui_img_radio_dot_png);
			type.set ("flixel/flixel-ui/img/radio_dot.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/tab.png", nme.NME_flixel_flixel_ui_img_tab_png);
			type.set ("flixel/flixel-ui/img/tab.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/img/tab_back.png", nme.NME_flixel_flixel_ui_img_tab_back_png);
			type.set ("flixel/flixel-ui/img/tab_back.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("flixel/flixel-ui/xml/defaults.xml", nme.NME_flixel_flixel_ui_xml_defaults_xml);
			type.set ("flixel/flixel-ui/xml/defaults.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			className.set ("flixel/flixel-ui/xml/default_popup.xml", nme.NME_flixel_flixel_ui_xml_default_popup_xml);
			type.set ("flixel/flixel-ui/xml/default_popup.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			
			
			initialized = true;
			
		}
		
	}
	
	
}


class NME_assets_data_beep_mp3 extends flash.media.Sound { }
class NME_assets_bg_cave_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_bullet_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_autotiles_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_autotiles_alt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_base_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_beep_mp4 extends flash.media.Sound { }
class NME_assets_data_button_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_a_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_b_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_c_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_down_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_left_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_right_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_up_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_x_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_button_y_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_courier_ttf extends flash.text.Font { }
class NME_assets_data_cursor_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_default_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_fontdata10pt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_fontdata11pt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_handle_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_logo_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_logo_corners_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_logo_light_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_nokiafc22_ttf extends flash.text.Font { }
class NME_assets_data_stick_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_flixel_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_open_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_pause_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_play_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_record_off_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_record_on_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_restart_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_step_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vcr_stop_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_data_vis_bounds_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_fonts_kenpixel_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_blocks_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_future_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_future_square_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_high_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_high_square_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_mini_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_mini_square_ttf extends flash.text.Font { }
class NME_assets_fonts_kenpixel_square_ttf extends flash.text.Font { }
class NME_assets_fonts_license_txt extends flash.utils.ByteArray { }
class NME_assets_gfx_cavewalltiles_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_gfx_citizen_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_gfx_mountain_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_gfx_snow_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_gfx_spaceman_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_gfx_wood_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_haxeflixel_svg extends flash.utils.ByteArray { }
class NME_assets_map_txt extends flash.utils.ByteArray { }
class NME_assets_player_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_player_gibs_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_tiles_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_assets_tileset_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_console_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_logdebug_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_open_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_pause_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_play_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_record_off_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_record_on_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_restart_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_statsdebug_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_step_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_stop_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_visualdebug_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_buttons_watchdebug_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_flixel_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_debugger_windowhandle_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_logo_haxeflixel_svg extends flash.utils.ByteArray { }
class NME_flixel_img_logo_logo_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_preloader_corners_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_preloader_light_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_tile_autotiles_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_tile_autotiles_alt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_analog_base_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_analog_thumb_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_cursor_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_fontdata11pt_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_virtualpad_a_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_virtualpad_b_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_virtualpad_c_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_virtualpad_down_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_virtualpad_left_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_virtualpad_right_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_virtualpad_up_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_virtualpad_x_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_img_ui_virtualpad_y_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_snd_beep_wav extends flash.media.Sound { }
class NME_flixel_snd_flixel_wav extends flash.media.Sound { }
class NME_flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_flixel_flixel_ui_xml_defaults_xml extends flash.utils.ByteArray { }
class NME_flixel_flixel_ui_xml_default_popup_xml extends flash.utils.ByteArray { }
