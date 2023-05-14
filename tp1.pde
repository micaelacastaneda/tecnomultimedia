String pantalla;
int cuenta;
int pos, tama;
PImage I1;
PImage I2;
PImage I3;
PFont fuente1;
PFont fuente2;
PFont fuente3;
float contador;
float suma;
float opacidad;


void setup() {
  size(640, 480);
  I1=loadImage("Chascomus-17.jpg");
  I2= loadImage("chascomus3.jpg");
  I3=loadImage("chascomus2.1.jpg");
  pantalla = "inicio";
  cuenta = 0;
  pos= 480;

  opacidad=(255);
  textSize(25);
  textAlign(CENTER);
}
void draw() {
  background(0);
  cuenta++;
  if (pantalla.equals("inicio")) {
    image(I1, 0, 0, width, height);
    textAlign(CENTER);
    fill(216, 188, 209);
    text("Chascomus \n es una ciudad dentro de buenos aires, con una poblacion \n de mas de 35 mil habitantes. Es conocida por su gran laguna \n y sus diversas actividades turisticas.", width/2, pos);
    pos--;
  } else if (pantalla.equals("segunda")) {
    image(I2, 0, 0, width, height);
    textAlign(CORNER);
    fill(0, 0, 0);
    text("Castillo de la amistad \n cuenta con un castillo abandonado alrededor \n de su laguna el cual existe hace mas de  50 años se \n puede vistar libremente sin necesidad de pagar.", 100, 150);
  } else if (pantalla.equals("tercera")) {
      image(I3, 0, 0, width, height);
    textAlign(CENTER);
    fill(216, 188, 209);
    text("Su laguna es una de mas las actividades turisticas \n mas visitadas, donde se puede acceder para pasar \n la tarde, y cuenta con la practica de deportes como esquí, \n windsurf, kitesurf y kayak, entre otros. ", width/2, 100);
  } else {

    fill(211, 100, 185);
    textSize(tama);
    if (tama<35) {
      tama--;
    }
    text("¡Chascomus es una opcion turisitca \n para una escapada express!", width/2, 200);

  rect (480, 400, 100, 40);
  }
  if (cuenta <300) {
    pantalla = "inicio";
  } else if (cuenta >=300 && cuenta < 410) {
    pantalla = "segunda";
  } else if (cuenta >=330 && cuenta < 480) {
    pantalla = "tercera";
  } else {
    pantalla = "fin :)";
  }
  text(pantalla, 50, 400);
}
void mousePressed() {
if (mouseX > 480 && mouseX < 580 && mouseY > 400 && mouseY < 500)
   cuenta=0;
}
