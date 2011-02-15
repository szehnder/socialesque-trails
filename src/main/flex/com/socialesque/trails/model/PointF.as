package com.socialesque.trails.model
{
	public class PointF
	{
		public var x:Number;
		public var y:Number;
		
		public function PointF(x:Number, y:Number)
		{
			this.x = x;
			this.y = y;
		}

		public function toString() : String {
			return "["+Number(x).toPrecision(2)+","+Number(y).toPrecision(2)+"]";
		}

	}
}