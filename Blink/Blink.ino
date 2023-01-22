/*
 ESP8266 Blink by Simon Peter
 Blink the blue LED on the ESP-01 module
 This example code is in the public domain
 
 The blue LED on the ESP-01 module is connected to GPIO1 
 (which is also the TXD pin; so we cannot use Serial.print() at the same time)
 
 Note that this sketch uses LED_BUILTIN to find the pin with the internal LED
*/

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);  
  Serial.begin(9600);
  // Initialize the LED_BUILTIN pin as an output
}

// the loop function runs over and over again forever
void loop() {
  
  String readString;
  String Q;
  while(Serial.available()){
    delay(1);
    if(Serial.available()>0){
      char c= Serial.read();
      if(isControl(c)){
        break;}
      
      readString +=c;}}
      
    
  Q=readString;
  if (Q=="on"){
    digitalWrite(LED_BUILTIN,1);}
  if (Q=="off"){
    digitalWrite(LED_BUILTIN,0);}
}
