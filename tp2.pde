//CASTAÑEDA MICAELA 93566/6
///TP2 
///variables
int cant= 20;
int ancho;
PImage ilusion;


void setup() {
  size(800, 400);
  ancho = width/cant;
  ilusion=loadImage("IMG0.jpg");
}
void draw() {
  image(ilusion,0,0);
///for y variables
  for (int x=10; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      float distan = dist(mouseX, mouseY, width/2, height/2);
      float tam = map(distan, 0, vert (0, 0, width/2, height/2), ancho, ancho/4 );
      float tonalidad = map(distan, 0, vert(0, 0, width/2, height/2), 255, 255 );
      if ((x+y)%2==0) {
        fill(0, 0, 0, tonalidad);
        rect(x*ancho+ancho/2, y*ancho+ancho/2, ancho, ancho);
      } else {
        fill(250);
        rectMode(CENTER);
        rect(x*ancho+ancho/2, y*ancho+ancho/2, tam, tam);
      }
    }
  }
}
float vert(int A1, int A2, int A3, int A4) {
  float efecto = dist(A1, A2, A3, A4)/2;
  return efecto;
}
