package shape
{
	import flash.display.Sprite;

	public class Circle extends Sprite
	{
		public var radius:int;
		
		public function Circle(radius:int=200)
		{
			this.radius = radius;
			init();
		}
		protected function init():void{
			draw();
		}
		protected function draw():void{
			this.graphics.clear();
			this.graphics.beginFill(0xCCCCCC,0.75);
			this.graphics.drawCircle(0,0,this.radius);
			this.graphics.endFill();
		}
		
		public function get area():Number{
			return Math.PI * radius * radius;
		}
		
	}
}