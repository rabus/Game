#if !macro
#if (openfl_html5 && !flambe)

import org.rabus.game.Main;
import haxe.Resource;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
import flash.net.URLLoaderDataFormat;
//import flash.Assets;
import flash.Lib;

class ApplicationMain {

	private static var completed:Int;
	private static var preloader:NMEPreloader;
	private static var total:Int;

	public static var loaders:Map <String, Loader>;
	public static var urlLoaders:Map <String, URLLoader>;

	public static function main() {
		completed = 0;
		loaders = new Map <String, Loader>();
		urlLoaders = new Map <String, URLLoader>();
		total = 0;
		
		//flash.Lib.setPackage("Adam Rabiega", "Game", "org.rabus.game.Game", "0.0.1");
		flash.Lib.current.loaderInfo = flash.display.LoaderInfo.create (null);
		
		try {
			
			if (Reflect.hasField (js.Browser.window, "winParameters")) {
				
				Reflect.setField (flash.Lib.current.loaderInfo, "parameters", Reflect.field (js.Browser.window, "winParameters")());
				
			}
			
			flash.Lib.current.stage.loaderInfo = flash.Lib.current.loaderInfo;
			
		} catch (e:Dynamic) {}

		

		
		preloader = new NMEPreloader();
		
		Lib.current.addChild(preloader);
		preloader.onInit();

		
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/bg_cave.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/bullet.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/autotiles.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/autotiles_alt.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/base.png", loader);
		total ++;
		
		
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/button.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/button_a.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/button_b.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/button_c.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/button_down.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/button_left.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/button_right.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/button_up.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/button_x.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/button_y.png", loader);
		total ++;
		
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/cursor.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/default.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/fontData10pt.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/fontData11pt.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/handle.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/logo.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/logo_corners.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/logo_light.png", loader);
		total ++;
		
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/stick.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/vcr/flixel.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/vcr/open.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/vcr/pause.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/vcr/play.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/vcr/record_off.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/vcr/record_on.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/vcr/restart.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/vcr/step.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/vcr/stop.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/data/vis/bounds.png", loader);
		total ++;
		
		
		
		
		
		
		
		
		
		
		
		var urlLoader:URLLoader = new URLLoader();
		urlLoader.dataFormat = BINARY;
		urlLoaders.set("assets/Fonts/license.txt", urlLoader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/gfx/caveWallTiles.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/gfx/citizen.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/gfx/mountain.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/gfx/snow.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/gfx/spaceman.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/gfx/wood.png", loader);
		total ++;
		
		
		var urlLoader:URLLoader = new URLLoader();
		urlLoader.dataFormat = BINARY;
		urlLoaders.set("assets/map.txt", urlLoader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/player.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/player_gibs.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/tiles.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("assets/tileset.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/console.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/logDebug.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/open.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/pause.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/play.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/record_off.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/record_on.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/restart.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/statsDebug.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/step.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/stop.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/visualDebug.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/buttons/watchDebug.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/flixel.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/debugger/windowHandle.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/logo/default.png", loader);
		total ++;
		
		
		var urlLoader:URLLoader = new URLLoader();
		urlLoader.dataFormat = BINARY;
		urlLoaders.set("flixel/img/logo/HaxeFlixel.svg", urlLoader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/logo/logo.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/preloader/corners.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/preloader/light.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/tile/autotiles.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/tile/autotiles_alt.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/analog/base.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/analog/thumb.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/button.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/cursor.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/fontData11pt.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/virtualpad/a.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/virtualpad/b.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/virtualpad/c.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/virtualpad/down.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/virtualpad/left.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/virtualpad/right.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/virtualpad/up.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/virtualpad/x.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/img/ui/virtualpad/y.png", loader);
		total ++;
		
		
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/box.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/button.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/button_thin.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/button_toggle.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/check_box.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/check_mark.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/chrome.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/chrome_flat.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/chrome_inset.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/dropdown_mark.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/hilight.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/invis.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/radio.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/radio_dot.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/tab.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader();
		loaders.set("flixel/flixel-ui/img/tab_back.png", loader);
		total ++;
		
		
		var urlLoader:URLLoader = new URLLoader();
		urlLoader.dataFormat = BINARY;
		urlLoaders.set("flixel/flixel-ui/xml/defaults.xml", urlLoader);
		total ++;
		
		
		var urlLoader:URLLoader = new URLLoader();
		urlLoader.dataFormat = BINARY;
		urlLoaders.set("flixel/flixel-ui/xml/default_popup.xml", urlLoader);
		total ++;
		
		
		var resourcePrefix = "NME_:bitmap_";
		for (resourceName in Resource.listNames()) {
			if (StringTools.startsWith (resourceName, resourcePrefix)) {
				var type = Type.resolveClass(StringTools.replace (resourceName.substring(resourcePrefix.length), "_", "."));
				if (type != null) {
					total++;
					var instance = Type.createInstance (type, [ 0, 0, true, 0x00FFFFFF, bitmapClass_onComplete ]);
				}
			}
		}
		
		if (total == 0) {
			begin();
		} else {
			for (path in loaders.keys()) {
				var loader:Loader = loaders.get(path);
				loader.contentLoaderInfo.addEventListener("complete",
          loader_onComplete);
				loader.load (new URLRequest (path));
			}

			for (path in urlLoaders.keys()) {
				var urlLoader:URLLoader = urlLoaders.get(path);
				urlLoader.addEventListener("complete", loader_onComplete);
				urlLoader.load(new URLRequest (path));
			}
		}
	}

	private static function begin():Void {
		preloader.addEventListener(Event.COMPLETE, preloader_onComplete);
		preloader.onLoaded ();
	}
	
	private static function bitmapClass_onComplete(instance:BitmapData):Void {
		completed++;
		var classType = Type.getClass (instance);
		Reflect.setField (classType, "preload", instance);
		if (completed == total) {
			begin ();
		}
	}

	private static function loader_onComplete(event:Event):Void {
		completed ++;
		preloader.onUpdate (completed, total);
		if (completed == total) {
			begin ();
		}
	}

	private static function preloader_onComplete(event:Event):Void {
		preloader.removeEventListener(Event.COMPLETE, preloader_onComplete);
		Lib.current.removeChild(preloader);
		preloader = null;
		if (Reflect.field(org.rabus.game.Main, "main") == null)
		{
			var mainDisplayObj = Type.createInstance(DocumentClass, []);
			if (Std.is(mainDisplayObj, flash.display.DisplayObject))
				flash.Lib.current.addChild(cast mainDisplayObj);
		}
		else
		{
			Reflect.callMethod(org.rabus.game.Main, Reflect.field (org.rabus.game.Main, "main"), []);
		}
	}
}

@:build(DocumentClass.build())
class DocumentClass extends org.rabus.game.Main {}

#else

import org.rabus.game.Main;

class ApplicationMain {

	public static function main() {
		if (Reflect.field(org.rabus.game.Main, "main") == null) {
			Type.createInstance(org.rabus.game.Main, []);
		} else {
			Reflect.callMethod(org.rabus.game.Main, Reflect.field(org.rabus.game.Main, "main"), []);
		}
	}
}

#end
#else

import haxe.macro.Context;
import haxe.macro.Expr;

class DocumentClass {
	
	macro public static function build ():Array<Field> {
		var classType = Context.getLocalClass().get();
		var searchTypes = classType;
		while (searchTypes.superClass != null) {
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				var fields = Context.getBuildFields();
				var method = macro {
					return flash.Lib.current.stage;
				}
				fields.push ({ name: "get_stage", access: [ APrivate, AOverride ], kind: FFun({ args: [], expr: method, params: [], ret: macro :flash.display.Stage }), pos: Context.currentPos() });
				return fields;
			}
			searchTypes = searchTypes.superClass.t.get();
		}
		return null;
	}
	
}
#end
