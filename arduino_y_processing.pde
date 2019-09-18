import controlP5.*; //libreria de importacin de control
import processing.serial.*;

Serial port;

ControlP5 cp5; //creacion de control a objetos
PFont font;

void setup() { 

  size(300, 450);    //ancho y largo de la ventana

  printArray(Serial.list());   //imprecion de variables

  port = new Serial(this, "COM3", 9600);  //conceccion de arduino y proceesing por medio del puerto

  //dimensiones de los botones y funciones

  cp5 = new ControlP5(this);
  font = createFont("calibri light bold", 20);    // forma y titulo de bototnes

  cp5.addButton("red")     //nombre del boton
    .setPosition(100, 50)  //bosicion en x y y 
    .setSize(120, 70)      //ancho y altura del boton
    .setFont(font)
    ;   

  cp5.addButton("yellow")     
    .setPosition(100, 150)  
    .setSize(120, 70)      
    .setFont(font)
    ;

  cp5.addButton("blue")     
    .setPosition(100, 250)  //x and y coordinates of upper left corner of button
    .setSize(120, 70)      
    .setFont(font)
    ;

  cp5.addButton("alloff")     //"alloff" boton de apagado
    .setPosition(100, 350)  
    .setSize(120, 70)      
    .setFont(font)
    ;
}

void draw() {  //same as loop in arduino

  background(0); // background color of window (r, g, b) or (0 to 255)

  //titulo de la ventana
  fill(255);               
  textFont(font);
  text("LED CONTROL", 80, 30);  // texto y corrdenadas
}

void red() {
  port.write('r');
}

void yellow() {
  port.write('b');
}

void blue() {
  port.write('y');
}

void alloff() {
  port.write('f');
}
