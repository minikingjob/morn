package morn.editor{
	import flash.display.BitmapData;
	
	import morn.core.managers.AssetManager;
	/**
	 * 重置加载器(对MornUI库的AssetsManager进行重置，通过Sys提供的方法，调用编辑器内的资源)
	 */
	public class BuilderResManager extends AssetManager{
		public function BuilderResManager(){
			
		}
		
		override public function hasClass(name:String):Boolean {
			return Sys.hasRes(name);
		}
		
		override public function getClass(name:String):Class {
			return Sys.getResClass(name);
		}
		
		override public function getAsset(name:String):* {
			return Sys.getRes(name);
		}
		
		override public function getBitmapData(name:String, cache:Boolean = true):BitmapData {
			return Sys.getResBitmapData(name);
		}
	}
}