package tests
{
	import org.flexunit.Assert;
	import org.flexunit.assertThat;
	import org.hamcrest.number.closeTo;
	
	import shape.Circle;
	
	public class CircleTest
	{
		
		private var circle:Circle
		
		[Before(order=1)]
		public function before():void {   
			circle = new Circle();   
		}   

		[After]  
		public function runAfterEveryTest():void {   
			circle = null;   
		} 
		
		[Test]  
		public function constructorDefaultRadius():void {   
			Assert.assertEquals(200, circle.radius);   
		}
		
		[Test]  
		public function constructorWithRadius():void {
			circle = new Circle(250);
			Assert.assertEquals(250, circle.radius);   
		}
		
		[Test]  
		public function getAreaDefaultRadius():void {
			assertThat(circle.area, closeTo(125663,1));   
		}
	}
}