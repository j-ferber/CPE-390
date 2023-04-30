void power(int pin, int percent, int duration) {
  int off = 100 - percent; 
  for(int i = 0; i < duration/100; i++){
    digitalWrite(pin, LOW);
    delay(percent);
    digitalWrite(pin, HIGH);
    delay(off);
  }
}

void setup() {

  pinMode(3, OUTPUT);
  power(3, 100, 3000);
  power(3, 50, 3000);
  power(3, 20, 3000);
}


void loop() {
  // put your main code here, to run repeatedly:
  
}
