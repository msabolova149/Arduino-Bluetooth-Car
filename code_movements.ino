
#include <AFMotor.h>

AF_DCMotor motor1(1); 
AF_DCMotor motor2(4);
char command; 

void setup() {       
  Serial.begin(9600);  
}

void loop(){
    if(Serial.available() > 0){ 
          command = Serial.read(); 
          Stop();
      
          switch(command){
          case 'F':  
            forward();
            break;
          
          case 'B':  
            back();
            break;
          
          case 'L':  
            left();
            break;
          
          case 'R':
            right();
            break;
          }
    }
} 

void forward(){
  motor1.setSpeed(255); 
  motor1.run(FORWARD); 
  
  motor2.setSpeed(255);
  motor2.run(FORWARD);
}

void back(){ 
  motor1.setSpeed(255); 
  motor1.run(BACKWARD); 
  
  motor2.setSpeed(255); 
  motor2.run(BACKWARD); 
}

void left(){
  motor1.setSpeed(255); 
  motor1.run(BACKWARD); 
  
  motor2.setSpeed(255); 
  motor2.run(FORWARD);  

}

void right(){
  motor1.setSpeed(255); 
  motor1.run(FORWARD); 
  
  motor2.setSpeed(255); 
  motor2.run(BACKWARD); 

} 

void Stop(){
  motor1.setSpeed(0); 
  motor1.run(RELEASE); 
  
  motor2.setSpeed(0); 
  motor2.run(RELEASE); 
}
