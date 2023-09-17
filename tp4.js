///castañeda micaela 93566/6
//tp 4, inspiado en "Pitfall"

let jx, jy, Jancho, Jalto; ///variables del jugador
let ox, oy, oancho, oalto; /// variables de los obstaculos
//let pantallas=[]; //pantallas
let saltar;
let Nosaltar;


let oox=[]; 
let ooy=[]; //area por donde pasan los obstaculos
let dox=[]; //velocidad de los osbtaculos
let cant= 10;
let SeEsquivaron= 0; 
let LasVidas= 0;

//let jugador=0;


function setup() {
createCanvas(600,500);
Jancho=70;
Jalto=50;
jx=50;
jy=299;
ox= 10;
oy= 10;
oancho= 50;
oalto=10;

 for (let i=0; i<cant; i++) {
    oox[i] = (0, 50);
    ooy[i] = (0,50);
    dox[i] = (15, 3); 
  }
  
}

function draw() {
background(245,193,233);
  fill(247,97,223);
   rect(0,350,599,149);
   
   obstaculoss(ox,oy,oancho,oalto);
   jugadorr(jx,jy,Jancho,Jalto);
   
  
  if (ox>width) {
    ox = -oancho;
  } 
  textSize(30);
  if (keyIsPressed===true) {
    if (keyCode=== RIGHT_ARROW && jx<50) {
      jx+=2;
    }
    if (keyCode=== LEFT_ARROW) { // limitar el borde izquierdo
      jx-=2;
    }
  }


///////arreglo de naves

for(let i=0; i<cant; i++){
  obstaculoss(oox[i], ooy[i], oancho,oalto);
  oox[i] += dox[i];
  if (oox[i]>600) {
    oox[i]= random(-300,-100);
    SeEsquivaron++;
  }
if (!Nosaltar) { ///Nosaltar === false
    if (SeEsquivaron>LasVidas) {
      textSize(50);
      fill(71,206,4);
      text("HAS GANADO!", 135,250);
    } else {
      textSize(50);
      fill(255,0,0);
      text("HAS PERDIDO", 135,250);
    }
  }
}

fill(252,252,252);
textSize(30);
fill(250,86,223);
text("Esquivados"+ SeEsquivaron,50,50);
textSize(30);
fill(250,0,17);
text("Vidas"+ LasVidas,400,50);
}
function obstaculoss(x,y,ancho,alto){
  fill(254,255,0);
  rectMode(CORNER);
  rect(500,330,80,20);
}

function keyPressed(){
 if(jugador<10){
if (keyCode===ENTER){
  saltar=true;
  jugador++;
}
 }else {
  Nosaltar==false;
}
}
  function impacto(x, y, px, py, ancho, alto) {
  if (x>px&& x<px+ancho && y>py && y<py+alto) {
    return true;
  } else {
    return false;
  }
}
  
function jugadorr(x,y,diam){
  fill(209,44,179);
  circle(37,320,60);
}

  
