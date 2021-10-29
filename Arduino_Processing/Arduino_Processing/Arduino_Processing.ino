const int botonIzq = 6;
const int botonDer = 2;

const int botonAbj = 12;
const int botonArr = 3;

const int botonAcc = 5;
const int botonSec = 7;

const int led = 4;

char val;
int botonIzqState = 0;
int botonDerState = 0;
int botonAbjState = 0;
int botonArrState = 0;
int botonAccState = 0;
int botonSecState = 0;
int enablePin = 11;
int in1Pin = 10;
int in2Pin = 9;

void setup() {
  pinMode(led, OUTPUT);
  pinMode(botonIzq, INPUT);
  pinMode(botonDer, INPUT);
  pinMode(botonAbj, INPUT);
  pinMode(botonArr, INPUT);
  pinMode(botonAcc, INPUT);
  pinMode(botonSec, INPUT);
  Serial.begin(9600);
}

void loop() {

  botonIzqState = digitalRead(botonIzq);
  botonDerState = digitalRead(botonDer);
  botonAbjState = digitalRead(botonAbj);
  botonArrState = digitalRead(botonArr);
  botonAccState = digitalRead(botonAcc);
  botonSecState = digitalRead(botonSec);


  if (botonIzqState == HIGH) {
    Serial.println("LEFT");
    digitalWrite(led, HIGH);
    delay(100);
  } else if (botonDerState == HIGH) {
    Serial.println("RIGHT");
    digitalWrite(led, HIGH);
    delay(100);
  } else if (botonAbjState == HIGH) {
    Serial.println("DOWN");
    digitalWrite(led, HIGH);
    delay(100);
  } else if (botonArrState == HIGH) {
    Serial.println("UP");
    digitalWrite(led, HIGH);
    delay(100);
  } else if (botonAccState == HIGH) {
    Serial.println("ACTION");
    digitalWrite(led, HIGH);
    delay(100);
  } else if (botonSecState == HIGH) {
    Serial.println("SECUNDARY");
    digitalWrite(led, HIGH);
    delay(100);
  }  else {
    Serial.println("NOTHING");
    digitalWrite(led, LOW);
    delay(100);
  }

  if (Serial.available() > 0) {
    val = Serial.read();
    if (val == 'Y')
    {
      int speed = 200;
      boolean reverse = true;
      setMotor(speed, reverse);

    } else if(val == 'N') {
      int speed = 0;
      boolean reverse = true;
      setMotor(speed, reverse);
    }
  }
}

void setMotor(int speed, boolean reverse)
{
  analogWrite(enablePin, speed);
  digitalWrite(in1Pin, ! reverse);
  digitalWrite(in2Pin, reverse);
}
