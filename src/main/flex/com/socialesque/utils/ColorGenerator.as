package com.socialesque.utils
{
	public class ColorGenerator
	{
		public function ColorGenerator()
		{
		}

		public static function random() : uint {
			var r:uint = new uint(Math.random()*128)+50;
			var g:uint = new uint(Math.random()*128)+50;
			var b:uint = new uint(Math.random()*128)+50;
			var color:uint = (r << 16) + (g << 8) + b;
			return color;
		}
	}
}