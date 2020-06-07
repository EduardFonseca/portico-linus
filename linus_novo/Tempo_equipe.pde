long voltaLong() { //<>//
  long TempoDeVoltaTotal;
  TempoFinalDeVolta=System.currentTimeMillis();
  TempoDeVoltaTotal=TempoFinalDeVolta-TempoInicialDeVolta;
  return TempoDeVoltaTotal;
}

//descobre a melhor volta de umda das equipes
int best_time(int n) {
  //varrer de 0 a NumVolta e salver o NumVolta da menor volta
  int Nvolta=0;
  //verificando se  a equipe completou uma volta;
  if (TotalVota[n]>0) {
    for (int v=0; v<=TotalVota[n]; v++) {
      if (MelhorTempoEquipeLong[n]>TempoVolta_completaLong[v][n]) {
        Nvolta=v;
      }
    }
  } 
  //caso onde a quipe nao completou nenhuma volta
  else {
    Nvolta=-1;
  }
  return Nvolta;
}


//ordenar as equipes por tempo 
void podio() {
  int temp;
  int aux1=0;
  int aux2=equipe;
  // preenchendo position
  for (int e=0; e<=equipe; e++) {
    if (best_time(e)>=0){
      posicao[aux1]=best_time(e);
    aux1++;
  } else {
    posicao[aux2]=best_time(e);
    aux2--;//equipe menos numero de equipes sem volta completa
  }
}
//ordenando vetor posicao
  for (int n=1; n<aux2; n++) {
    for (int h=n; h>0; h--) {
    if (posicao[n] < posicao [n - 1]) {
      temp = posicao[n];
      posicao[n] = posicao[n - 1];
      posicao[n - 1] = temp;
     }
    }
  }
}
