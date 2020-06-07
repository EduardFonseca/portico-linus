// contagem regressiva do tempo em millisegundo

float ContagemRegressiva() {
  float TempoRestante;
  TempoRestante=TempoMax_mil-TempoTotal();  // pega o valor de tempo max e retira o tempo total de percurso
  if (TempoRestante>0) {
    return TempoRestante;
  } else {
    return 0;
  }
}

//void para printar os 
void Timer() {
  float min, seg, miliseg;
  String TempoMin, TempoSeg, TempoMiliseg, Tempo_Total;
  //conversao de milisegundos para formato min:seg:miliseg
  min=ContagemRegressiva()/60000;
  seg=(ContagemRegressiva())%60000/1000;
  miliseg=(((ContagemRegressiva())%60000)%1000);
  //conversao de float para int
  int min_int = (int) min;
  int seg_int = (int) seg;
  int miliseg_int = (int) miliseg;
  // formatacao dos valores
  TempoMin= nf(min_int, 2);
  TempoSeg= nf(seg_int, 2);
  TempoMiliseg= nf(miliseg_int, 3);
  //juncao em uma so string com a formatacao pronta
  Tempo_Total= TempoMin+':'+TempoSeg+':'+TempoMiliseg;

  //display do tempo em branco enquanto tiver mais q 1 min no relogio
  if (min_int>=1) {
    fill(255);
    textFont(f, 80);
    text(Tempo_Total, (width/2)+40,150);
  }
  //display do tempo em vermelho quando faltar um min
  else {
    fill(255, 0, 0);
    textFont(f, 80);
    text(Tempo_Total, (width/2)+80,150);
  }
}

// retorna o tempo da volta em millisegundos para ser usada no condicional da pag principal linha 42
float Tempo_volta() {
  float voltas;
  TempoFinalDeVolta=System.currentTimeMillis();
  voltas =(TempoFinalDeVolta-TempoInicialDeVolta)-TempoCorrido_volta;
  return voltas;
}

String volta() {
  float Volta_min, Volta_seg, Volta_miliseg;
  String TempoVolta_min, TempoVolta_seg, TempoVolta_miliseg, TempoVolta_total;

  TempoFinalDeVolta=System.currentTimeMillis();
  //conversao de milisegundos para segundos
  Volta_min=(((TempoFinalDeVolta- TempoInicialDeVolta)-TempoCorrido_volta))/60000;
  Volta_seg=(((TempoFinalDeVolta- TempoInicialDeVolta)-TempoCorrido_volta)%60000)/1000;
  Volta_miliseg=((((TempoFinalDeVolta- TempoInicialDeVolta)-TempoCorrido_volta)%60000)%1000);
  TempoCorrido_volta=0;
  //coversao de float pra int
  int min_int = (int) Volta_min;
  int seg_int = (int) Volta_seg;
  int miliseg_int = (int) Volta_miliseg;
  //formatacao dos valores
  TempoVolta_min=nf(min_int, 2);
  TempoVolta_seg=nf(seg_int, 2);
  TempoVolta_miliseg=nf(miliseg_int, 3);
  //juncao em uma so string com a formatacao pronta
  TempoVolta_total=TempoVolta_min+':'+TempoVolta_seg+':'+TempoVolta_miliseg;
  //retorno do tempo
  return TempoVolta_total;
}
