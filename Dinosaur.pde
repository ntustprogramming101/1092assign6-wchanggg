class Dinosaur extends Enemy {
	// Requirement #4: Complete Dinosaur Class
 Dinosaur(float x, float y){
     super(x, y);

   }
  float currentSpeed = 1f ;
	final float TRIGGERED_SPEED_MULTIPLIER = 5;
  int direction = ( currentSpeed > 0 ) ? RIGHT : LEFT;  
  


  void display(){
    pushMatrix();
    translate( x, y );  
    
    if ( direction == RIGHT ) {
      scale( 1, 1 ) ;
      image( dinosaur, 0, 0, w, h ); 
    } else {
      scale( -1, 1 );
      image( dinosaur, -w, 0, w, h ); 
    }    
    popMatrix();
  }
  
void update() {
  if (direction == RIGHT) {
      x += currentSpeed/2;
    if ( x >= width - w || x <= 0) {
      currentSpeed *= -1;
    }
      if  ((y == player.y && direction == RIGHT && player.x >= x )|| 
      (y == player.y && direction == LEFT && player.x <= x) ) {
        
        currentSpeed *= TRIGGERED_SPEED_MULTIPLIER;
        
      }else{ 
        x += currentSpeed;
    }
  }

	// HINT: Player Detection in update()
	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
}}
