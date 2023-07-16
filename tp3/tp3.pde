////CASTAÑEDA MICAELA
///TP3 COMISION1

int [] pantallas = new int [20];
int numero0,numero1,numero2,numero3,numero4,numero5,numero6,numero7,numero8,numero9,numero10,numero11,numero12,numero13,numero14,numero15,numero16,numero17,numero18,numero19,numero20;
PImage f0,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f20;
PFont TITULO, titulo2;
int minumero;
int numeroactual;

void setup(){
  
  numero0=0; numero1=1; numero2=2; numero3=3; numero4=4; numero5=5; numero6=6; numero7=7; numero8=8; numero9=9; numero10=10; numero11=11; numero12=12; numero13=13; numero14=14; numero15=15; numero16=16; numero17=17;  numero18=18; numero19=19; numero20=20;

 size(600,600);
 ///fuentes
TITULO= loadFont("FNT1.vlw");
titulo2= loadFont("titulo2.vlw");
textFont(titulo2,35);
textFont(TITULO,35);
///imagenes
f0=loadImage("portada1.jpg");
f20=loadImage("cr1.jpg");
f1=loadImage("inicio1.jpg");
f2=loadImage("inicio2.jpg");
f3=loadImage("decision0.jpg");
f4=loadImage("decision1.jpg");
f5=loadImage("decision1.1.jpg");
f6=loadImage("decision1.2.jpg");
f7=loadImage("decision1.3.jpg");
f8=loadImage("final.jpg");
f9=loadImage("decision2.jpg");

for(int i=0;i<20;i++){
pantallas[i] =0;

}

}


void draw(){
println(pantallas);
numeroactual=minumero;

 if(pantallas[0]==0){
 planillabase("pantalla0",f0);
 fill(255,255,255);
  textAlign(CENTER);
 textSize(30);
    text("LA ULTIMA NOCHE DEL MUNDO",300,150);
    textSize(22);
    text("EMPEZAR",210,250,150,50);
    text("CREDITOS",209,327,150,50);

    
 }else if(pantallas[1]==0){
  planillabase1("pantalla1",f1);
   textSize(22);
     fill(255,255,255);
    text("SIGUIENTE",209,250,150,50);
    
 }else if(pantallas[3]==0){
 planillabase2("pantalla3",f4);
 textSize(22);
     fill(255,255,255);
    text("SIGUIENTE",209,250,150,50);
 
 }else if(pantallas[4]==0){
 planillabase3("pantalla4",f3);
textSize(17);
     fill(255,255,255);
    text("pasar tiempo en familia",209,240,150,50);
   
 
 }else if(pantallas[5]==0){
 planillabase4("pantalla5",f5);
 textAlign(CENTER);
  fill(0,0,0);
  textSize(30);
    text("Deciden pasar tiempo junto \n a sus hijos",300,50);
    textSize(22);
     fill(255,255,255);
    text("SIGUIENTE",209,250,150,50);
 

 }else if(pantallas[6]==0){
 planillabase5("pantalla6",f6);
 textAlign(CENTER);
  fill(0,0,0);
  textSize(30);
    text("Preocupados por el futuro  de sus hijos ...",300,45);
      textSize(22);
     fill(255,255,255);
    text("SIGUIENTE",209,250,150,50);
 
    
     }else if(pantallas[7]==0){
 planillabase6("pantalla7",f7);
 textAlign(CENTER);
  fill(0,0,0);
  textSize(23);
    text("Reflexionan sobre el amor y conexion en familia...",300,45);
    fill(255,255,255);
    text("SIGUIENTE",209,250,150,50);
    
}else if(pantallas[8]==0){
 planillabase7("pantalla8",f8);
 textAlign(CENTER);
  fill(255,255,255);
  textSize(26);
    text("EL MUNDO NO TERMINABA AQUELLA NOCHE",310,120);
    fill(0,0,0);
    textSize(22);
    text("REINICIAR.",209,250,150,50);

}else if(pantallas[9]==0){
 planillabase8("pantalla9",f20);
 textSize(20);
 fill(255,255,255);
 text("VOLVER",270,370,150,50);
 
 
    
}
}
///BOTONES
void mousePressed(){
if(pantallas[0]==0&&
Bcuadrado(250,300,250,300,numero1)){



}
else if(pantallas[1]==0 &&
Bcuadrado(350,200,350,100,numero2)){ 

  


}
else if(pantallas[2]==0 &&
Bcuadrado(250,300,250,300,numero3)){ 

  


}
else if(pantallas[3]==0 &&
Bcuadrado(250,300,250,300,numero4)){ 

  


}


else if(pantallas[4]==0 &&
Bcuadrado(250,300,250,300,numero5)){ 

  


}

else if(pantallas[5]==0 &&
Bcuadrado(250,300,250,300,numero6)){ 

  


}

else if(pantallas[6]==0 &&
Bcuadrado(250,300,250,300,numero7)){ 

  
}
 else if(pantallas[7]==0 &&
Bcuadrado(250,300,250,300,numero8)){ 


}
 else if(pantallas[8]==0 &&
Bcuadrado(250,300,250,300,numero0)){ 
}
 else if(pantallas[9]==0 &&
Bcuadrado(250,300,250,300,numero0)){ 



}

else if(pantallas[0]==0 && Bcuadrado(300,460,350,500,numero0)|| CFBcuadrado(100,250,100,250)){ 

}
}
void planillabase8(String hola,  PImage f1){
String eltexto = hola;
  PImage portada= f1;
  image(portada,0,0);
fill(0,0,0);
 rect(280,350,150,50);

}

void planillabase7(String hola,  PImage f1){
String eltexto = hola;
  PImage portada= f1;
  image(portada,0,0);
fill(255,255,255);
 rect(209,230,150,50);
}

void planillabase6(String hola,  PImage f1){
String eltexto = hola;
  PImage portada= f1;
  image(portada,0,0);
fill(0,0,0);
 rect(209,230,150,50);
}

void planillabase5(String hola,  PImage f1){
String eltexto = hola;
  PImage portada= f1;
  image(portada,0,0);
fill(0,0,0);
 rect(209,230,150,50);
}

void planillabase4(String hola,  PImage f1){
String eltexto = hola;
  PImage portada= f1;
  image(portada,0,0);
fill(0,0,0);
 rect(209,230,150,50);
    }

void planillabase3(String hola,  PImage f1){
String eltexto = hola;
  PImage portada= f1;
  image(portada,0,0);
textAlign(CENTER);
  textSize(30);
    text("¿Que harias si supieras que \n esta es tu ultima noche?...",300,50);
fill(0,0,0);
 rect(209,230,150,50);

    }

void planillabase2(String hola,  PImage f1){
String eltexto = hola;
  PImage portada= f1;
  image(portada,0,0);
textAlign(CENTER);
  fill(0,0,0);
  textSize(30);
    text("Pero presienten que el mundo \n acabaria esa noche...",300,50);
 rect(209,230,150,50);
}
void planillabase1(String hola,  PImage f1){
String eltexto = hola;
  PImage portada= f1;
  image(portada,0,0);
  textAlign(CENTER);
  fill(0,0,0);
  textSize(30);
  text("Ellos son una pareja felizmente \n unida...",300,70);
 rect(209,230,150,50);
}
//PLANILLA BASE
void planillabase(String mitexto,  PImage f1){
String eltexto = mitexto;
  PImage portada= f1;
  fill(255);
 textSize(30);
  image(portada,0,0);
 fill(0,0,0);
 rect(209,230,150,50);
 fill(0,0,0);
 rect(209,309,150,50);
 
 
}
 

 boolean Bcuadrado(int posicionx1, int posicionx2, int posiciony1, int posiciony2, int elnumero){
 int miposicionx1= posicionx1;
 int miposicionx2= posicionx2;
 
int  miposiciony1= posiciony1;
int miposiciony2= posiciony2;

int minumero=elnumero;

for(int i=0;i<19;i++){
  pantallas[i]=1;
    pantallas[minumero]=0;


}

 return (mouseX>miposicionx1 && mouseX<miposicionx2 && mouseY >miposiciony1 && mouseY<miposiciony2);

 }
 


 

 boolean CFBcuadrado(int posx1, int posx2, int posy1, int posy2){
 int LAposicionx1= posx1;
 int LAposicionx2= posx2;
 
int  miposiciony1= posy1;
int miposiciony2= posy2;

for(int i=0;i<19;i++){
  pantallas[i]=1;
    pantallas[9]=0;




}


 return !(mouseX>LAposicionx1 && mouseX<LAposicionx2 && mouseY >miposiciony1 && mouseY<miposiciony2);

 }
