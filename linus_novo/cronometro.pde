
void comeco() { //inicia o cronometro zerando o tempo inicial
  TempoInicio=System.currentTimeMillis();
  TempoCorrendo=true;
  TempoCorrido=0;
  TimerLogo=System.currentTimeMillis();
  Vsens=0;
}

void parada() {//pausa o cronometro
  TempoFinal=System.currentTimeMillis();
  TempoCorrendo=false;
}


void reset() {//zera variaveis utilizadas individualmente por equipes 
  TempoInicio=System.currentTimeMillis();
  TempoFinal= System.currentTimeMillis();
  TempoCorrendo=false;
  TempoCorrido=0;
  TempoCorrido_volta=0;
  NumVolta=-1;
}

void continuar() {// retoma o cronometro sem zerar o tempo inicial
  TempoCorrido=System.currentTimeMillis()- TempoFinal;
  TempoCorrido_volta=System.currentTimeMillis()- TempoFinal;
  TempoCorrendo=true;  
}
//::::::::::::::::::::::::::::::::::::::||calculo do tempo total em milisegundos||::::::::::::::::::::::::::::::::::::::
long TempoTotal() {
  long TempoTotal_milissec;
  if (TempoCorrendo) {
    TempoTotal_milissec=(System.currentTimeMillis()- TempoInicio)-TempoCorrido;
  } else {
    TempoTotal_milissec=(TempoFinal - TempoInicio)-TempoCorrido;
  }
  return TempoTotal_milissec;
}

//::::::::::::::::::::::::::::::::::::::||calculo dos minutos||::::::::::::::::::::::::::::::::::::::
long cronometro_min() {
  long min;
  if (TempoCorrendo) {
    min=(((System.currentTimeMillis()- TempoInicio)-TempoCorrido))/60000;
  } else {
    min=((TempoFinal - TempoInicio)-TempoCorrido)/60000;
  }
  return min;
}

//::::::::::::::::::::::::::::::::::::::||calculo dos segundos||::::::::::::::::::::::::::::::::::::::
long cronometro_sec() {
  long sec;
  if (TempoCorrendo) {
    sec=(((System.currentTimeMillis()- TempoInicio)-TempoCorrido)%60000)/1000;
  } else {
    sec=(((TempoFinal - TempoInicio)-TempoCorrido)%60000)/1000;
  }
  return sec;
}

//::::::::::::::::::::::::::::::::::::::||calculo dos milisegundos||::::::::::::::::::::::::::::::::::::::
long cronometro_milisec() {
  long TempoCronometro;
  if (TempoCorrendo) {
    TempoCronometro=((((System.currentTimeMillis()- TempoInicio)-TempoCorrido)%60000)%1000);
  } else {
    TempoCronometro=((((TempoFinal - TempoInicio)-TempoCorrido)%60000)%1000);
  }
  return TempoCronometro;
}
