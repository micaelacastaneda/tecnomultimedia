//CASTAÑEDA MICAELA 93566/6
//tp3

PImage[] pantallas = new PImage[14];
PImage[] botones = new PImage[5];
PImage[] decisiones = new PImage[5];
int pantalla = 0; // Variable para controlar la pantalla actual
PFont fuente;

int cant = 12;
int num = 50;
int ancho = 450;
int largo = 400;
int cambio = 0;

 
void setup() {
  size(600, 600);
  for (int i = 0; i <13; i++) {
    pantallas[i] = loadImage("pantallas/i" + i + ".jpeg");
  }
  for (int x = 0; x <5; x++) {
    botones[x] = loadImage("botones/b" + x + ".png");
for (int d = 0; d <4; d++) 
    decisiones[d] = loadImage("decisiones/d" + d + ".png");
  }
  
}

void draw() {

background(63, 67, 90);


// INICIO

if (pantalla==0){ 

  frameRate(60);
fill(255);
ellipse(mouseX,mouseY,10,10);
fill(63, 67, 90);
 textSize(30);
text( "La última noche del mundo",255,255);
image(pantallas[1], 90, 100, 425, 400);
 image(botones[2], 350, 520, 120, 50);
image(botones [1], 150, 520, 120, 50);}

  

  // pantalla de creditos

 

else if(pantalla==1)

{ fill(255);

  textSize(30);

 text("La última noche del mundo",22,50);
 text("Ray Bradbury",65,100);
text("Micaela Castañeda 93566/6",65,130);
image(botones [1], 250, 520, 120, 50);
image(pantallas [1], 130, 165, 325, 300);}

// historia

 

// pantalla 1
else if(pantalla==2){

background(63, 67, 90);
fill(255);
textSize(22);
image(pantallas [2], 80, 100, 450, 400);
image(botones [3], 250, 520, 120, 50);

text("Ellos son una pareja muy unida \n pero presienten que esta noche \n el mundo se va a acabar." ,180,30);

}

 

// pantalla 2

else if(pantalla==3){

background(63, 67, 90);
fill(26, 26, 28);
textSize(22);
image(pantallas [5], 80, 100, 450, 400);
image(botones [3], 250, 520, 120, 50);

text(" la ansiedad los está deseperando \n y no saben que decisión tomar",20,50);

}

// pantalla 3

 

else if(pantalla==4)

{ fill(63, 67, 90);
textSize(30);
text("¿Qué harías vos?",220,50);
image(decisiones [2], 400, 420, 120, 50);
image(decisiones [1], 400, 350, 120, 50);
image(pantallas [4], 130, 165, 250, 300);}

 

// pantalla 4

else if(pantalla==5){
background(63, 67, 90);
fill(26, 26, 28);
textSize(22);
image(pantallas [11], 80, 100, 450, 400);
image(botones [3], 250, 520, 120, 50);

text("No lo soportan más y deciden \n tomar jarabe juntos",20,50);}

// pantalla 4.1

else if(pantalla==6){

background(63, 67, 90);

fill(26, 26, 28);

  textSize(22);

  image(pantallas[12], 80, 100, 450, 400);

  image(botones [4], 250, 520, 120, 50);

text("Mueren juntos en la cama matrimonial",20,50);}

 

// pantalla 5

 else if(pantalla==7){

background(63, 67, 90);

fill(26, 26, 28);

  textSize(22);

  image(pantallas [6], 80, 100, 450, 400);

image(botones [3], 250, 520, 120, 50);

text("Deciden empezar a pasar más \n tiempo con sus hijos" ,20,30);}

 

// pantalla 6

else if(pantalla==8){

background(63, 67, 90);

fill(26, 26, 28);

  textSize(22);

  image(pantallas[5], 80, 100, 450, 400);

image(botones [3], 250, 520, 120, 50);

text("Pero no puede ignorar la situación" ,20,30);}

 

// pantalla 7

else if(pantalla==9){

background(63, 67, 90);

fill(26, 26, 28);

  textSize(22);

  image(pantallas[5], 80, 100, 450, 400);

image(decisiones [3], 400, 420, 120, 50);

  image(decisiones [1], 400, 350, 120, 50);

text("¿Qué decisión deben tomar?" ,50,50);

}

 

// pantalla 8

else if(pantalla==10){

background(63, 67, 90);

fill(26, 26, 28);

  textSize(22);

  image(pantallas[10], 80, 100, 450, 400);

image(botones [4], 400, 420, 120, 50);

text("Huyen juntos hacía su final" ,50,50);}

 

// pantalla 9

else if(pantalla==11){

background(63, 67, 90);

fill(26, 26, 28);

  textSize(22);

  image(pantallas[7], 80, 100, 450, 400);

  image(botones [1], 250, 520, 120, 50);

text("Empiezan a conectar y hablar \n más con su familia",50,50);

}

 

 

// pantalla 10 FINL

else if(pantalla==12){

background(63, 67, 90);

fill(26, 26, 28);

  textSize(22);

  image(pantallas[9], 80, 100, 450, 400);

  image(botones [4], 250, 520, 120, 50);

text("Finalmente el mundo no terminaba \n esa noche. ",50,50);

text("FIN.",50,70);
}
}
// Click entre pantallas


 void mousePressed() {
  // comenzar
if (pantalla == 0 && mouseX > 150 && mouseX < 270 && mouseY > 520 && mouseY < 570) {
    pantalla = 2;
    cambio = 0; }
       // creditos

  if (pantalla == 0  && mouseX > 350 && mouseX < 470 && mouseY > 520 && mouseY < 570)  {
    pantalla = 1;
    cambio = 0; }
  else if (pantalla == 1 && mouseX > 100 && mouseX < 675 && mouseY > 15 && mouseY < 865) {
    pantalla = 2;
    cambio = 0; }
 
    // historia

else if (pantalla == 2  && mouseX > 100 && mouseX < 675 && mouseY > 15 && mouseY < 865) {

    pantalla = 3;

    cambio = 0; }

else if (pantalla == 3  && mouseX > 100 && mouseX < 675 && mouseY > 15 && mouseY < 865) {
 pantalla = 4;
 cambio = 0; }

    // decisión 1

else if (pantalla == 4 && mouseX > 400 && mouseX < 520 && mouseY > 420 && mouseY < 470)

{ pantalla = 5;

    cambio = 0; }

else if (pantalla == 4 && mouseX > 400 && mouseX < 520 && mouseY > 350 && mouseY < 400)

{ pantalla = 7;

    cambio = 0; }

else if (pantalla == 5  && mouseX > 100 && mouseX < 675 && mouseY > 15 && mouseY < 865) {

    pantalla = 6;

    cambio = 0; }

    // reinicio

else if (pantalla == 6 && mouseX > 100 && mouseX < 675 && mouseY > 15 && mouseY < 865) {

    pantalla = 1;

    cambio = 0; }

    //

else if (pantalla == 7  && mouseX > 100 && mouseX < 675 && mouseY > 15 && mouseY < 865) {

    pantalla = 8;

    cambio = 0; }

else if (pantalla == 8  && mouseX > 100 && mouseX < 675 && mouseY > 15 && mouseY < 865) {

    pantalla = 9;

    cambio = 0; }

   

    // deicision 2
else if (pantalla == 9 && mouseX > 400 && mouseX < 520 && mouseY > 420 && mouseY < 470)
{ pantalla = 10;
    cambio = 0; }
    
    else if (pantalla == 10 && mouseX > 400 && mouseX < 520 && mouseY > 420 && mouseY < 470)
{ pantalla = 0;
    cambio = 0; }
    
 else if (pantalla == 9 && mouseX > 400 && mouseX < 520 && mouseY > 350 && mouseY < 400)
{ pantalla =11;
    cambio = 0; }
       else if (pantalla == 11 && mouseX > 100 && mouseX < 675 && mouseY > 15 && mouseY < 865) {
    pantalla = 0;
    cambio = 0; }
   

             

    // reinicio

            else if (pantalla == 10 && mouseX > 400 && mouseX < 520 && mouseY > 350 && mouseY < 400 ) {

    pantalla = 0;

    cambio = 0; }

                   else if (pantalla == 11  && mouseX > 100 && mouseX < 675 && mouseY > 15 && mouseY < 865) {

    pantalla = 12;
 cambio = 0; 
                   }
                 

    /// reinicio FIN

    else if (pantalla == 12 && mouseX > 100 && mouseX < 675 && mouseY > 15 && mouseY < 865) {

    pantalla = 0;

    cambio = 0; }
}
