float lat=41.804;
float lon=-6.749;
float alt=5;
float aceX=5;
float aceY=6;
float aceZ=7;
float altMed=6;
float vel=10;
float pitch=0;
float roll=0;
float yaw=0;
float time_go=0;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  lat=lat+0.001;
  lon=lon+0.001;
  alt=alt+10;
  aceX= aceX + 0.1 ;
  aceY= aceY + 0.1 ;
  aceZ= aceZ + 0.1 ;
  altMed= altMed + 4.9 ;
  vel=vel+0.5;
  time_go=time_go+0.5;
  //pitch=pitch+1;
  //roll=roll+1;
  //yaw=yaw+1;
  
  String gps= String(aceX) + ' '  + String(aceY) + ' ' + String(aceZ) + ' ' + String(lat, 5) + ' ' + String(lon,5) + ' '  + String(altMed,5) + ' ' + String(vel,3) + ' ' + String(pitch,3) + ' ' + String(roll,3) + ' ' + String(yaw,3)+ ' ' + String(time_go,3);
  String data= gps ;
  String trash= "sou lixo" ;
  Serial.println(data);
  delay(50);
  Serial.println(trash);
  delay(1000);
  
}
