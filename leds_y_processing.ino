
void setup() {

  pinMode(10, OUTPUT);   //asignacion de pin, color azul
  pinMode(11, OUTPUT);   //asignacion de pin, color rojo
  pinMode(12, OUTPUT);   //asignacion de pin, color amarilo

  Serial.begin(9600);    //inicioo de aranque en  @9600 bps
}

void loop() {

  if (Serial.available()) { //id data (variable)

    char val = Serial.read();

    if (val == 'r') {     // accion si es verdadera
      digitalWrite(10, HIGH); //encender led
    }
    if (val == 'b') {     
      digitalWrite(11, HIGH); 
    }
    if (val == 'y') {     
      digitalWrite(12, HIGH); 
    }
    if (val == 'f') {     
      digitalWrite(11, LOW); //apagar led
      digitalWrite(12, LOW);
      digitalWrite(10, LOW);
    }
  }
}
