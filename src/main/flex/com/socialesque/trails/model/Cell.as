package com.socialesque.trails.model
{
	import flash.geom.Rectangle;
	
	public class Cell extends Rectangle
	{
		public var index:Number;
		public var xPct:Number;
		public var yPct:Number;
		
		public var pointTally:Number=0;
		public var nextCellTally:Number=0;
		public var flowVector:PointF;
		public var flowVectorRotation:Number;
		
		public function Cell(index:Number, xPct:Number, yPct:Number)
		{
			this.index = index;
			this.xPct = xPct;
			this.yPct = yPct;
		}
		
		public function clearStats() : void {
			pointTally = 0;
			flowVector = new PointF(0,0);
			this.nextCellTally = 0;
			this.flowVectorRotation = 0;
		}
		
		public function addPoint(x:Number, y:Number) : void {
			//var newX:Number = ((flowVector.x*pointTally)+x)/(pointTally+1);
			//var newY:Number =  ((flowVector.y*pointTally)+y)/(pointTally+1);
			//flowVector = new PointF(newX, newY);
			pointTally++;
		}
		
		public function addNewNextCell(cell:Cell) : void {
			var newX:Number = cell.x-this.x;
			var newY:Number =  cell.y-this.y;
			var theta:Number = Math.atan(newY/newX);
			
			if (newX<0 )
				theta += Math.PI;
				
			flowVectorRotation = ((flowVectorRotation*this.nextCellTally)+theta)/(this.nextCellTally+1);
			flowVector = new PointF(Math.cos(theta), Math.sin(theta));
			this.nextCellTally ++;
		}
		
		public function setDimensions(gridSize:Number, width:Number, height:Number) : void {
			this.x = xPct*width;
			this.y = yPct*height;
			this.width = width/gridSize;
			this.height = height/gridSize;
		}
		
		
	}
}