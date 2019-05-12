//Plastic Pollution Visualization
//12.05.2019
//by Scorpio

//OBIETTIVO
//GEOLOCALIZZAZIONE DEI CAMPIONI => colonne 10 e 11 => 9 e 10 dell'array
//successivamente ampiezza dei campioni

//VARIABILI DATI
Table marine, freshwater;
float[] latitudeValues, longitudeValues;

void setup() {
  pixelDensity(2);
  size(800, 500);
  //orientation(LANDSCAPE);
  //textAlign(CENTER, CENTER);
  //textSize(36);
  getData();
}


void draw() {
}


void getData() {

  //LOADING TABLE
  // [0] , [1] , [2] , [3] , [4] 
  marine = loadTable("marine.csv", "header");
  freshwater = loadTable("freshwater.csv", "header");
  
  //inizzializzazione degli array marine.csv
  latitudeValues = new float[marine.getRowCount()];
  longitudeValues = new float[marine.getRowCount()];
  
  //riempio gli array
  for (int i = 0; i < marine.getRowCount(); i++) {
    latitudeValues[i] = marine.getFloat(i, 9);
    longitudeValues[i] = marine.getFloat(i, 10);
  }
  
  //debug
  //printArray("LATITUDE: " + latitudeValues + " LONGITUDE: " + longitudeValues);
  //printArray(latitudeValues);
  printArray(longitudeValues);
  
  
}
