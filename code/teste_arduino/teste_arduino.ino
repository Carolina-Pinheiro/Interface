float lat=30;
float lon=35;
float alt=5;
float aceX=5;
float aceY=6;
float aceZ=7;
float altMed=6;
  
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
  String gps= String(aceX) + ' '  + String(aceY) + ' ' + String(aceZ) + ' ' + String(lat, 5) + ' ' + String(lon,5) + ' ' + String(alt,5) + ' ' + String(altMed,5);
  String data= gps ;
  Serial.println(data);
  delay(1000);
  
}
