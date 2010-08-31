package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import shape.Circle;
	
	public class FUAS3Test extends Sprite
	{
		public function FUAS3Test()
		{
			this.stage.scaleMode = StageScaleMode.NO_SCALE;
			this.stage.align = StageAlign.TOP_LEFT;
			init();
			
		}
		protected function init():void {
			var c1:Circle = new Circle();
			this.addChild(c1);
			var c2:Circle = new Circle(150);
			c2.x = c2.y = 150;
			this.addChild(c2);
		}
	}
}