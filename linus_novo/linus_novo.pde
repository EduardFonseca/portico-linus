
void setup() {
  //fullScreen();
  size(1920, 1080);
  //::::::::::::::::::::::::::::::::::::::||criacao de fontes||::::::::::::::::::::::::::::::::::::::
  f = createFont("DS-DIGIB.TTF", 16);  // fonte de alarme digital
  //::::::::::::::::::::::::::::::::::::::||carregar imagensque utilizadas no layout||::::::::::::::::::::::::::::::::::::::  
  wallpaper =loadImage("processing.png");
  TempoVolta_completo[NumVolta][equipe]="00:00:000";//armazenamento inicial de um tempo nulo para evitar erros
  //teste github
  
}

void draw() {
  background(0);
  //::::::::::::::::::::::::::::::::::::::||.................||::::::::::::::::::::::::::::::::::::::
  layout();
  Timer();
  if(NumVolta>=1){
    println(TempoVolta_completaLong[NumVolta-1][equipe]);
  }
    ////::::::::::::::::::::::::::::::::::::::||controle com teclado||::::::::::::::::::::::::::::::::::::::
  if (keyPressed) {
    if (key=='i' || key=='I') {//inicia o cronometro zerado
      comeco();
      TotalVota[equipe]=0;
    }
    if (key=='p'|| key=='P') {//pausa o cronometro
      parada();
    }
    if (key=='r'|| key=='R') {//zera o cronometro
      reset();
    }
    if (key=='c' || key=='C') {// retoma o cronometro de onde foi pausado
      continuar();
      //print(TempoCorrido);
    }
    if ((key=='v') || (key=='V')) {//marca volta nao registrada
  //:::::::::::::::::::::::testa se e a primeira ou segunda vez do carro no cronometro::::::::::::::::::::::::::
        
        if(Vsens==0){
          //conta a primeira passagem do carro pelo sensor 
          TempoInicialDeVolta=System.currentTimeMillis();
           Vsens=1;
        }
        if(Vsens==1 && Tempo_volta()>10000){
          //conta voltas manualmente 
          TempoVolta_completo[NumVolta][equipe]=volta();
           TempoVolta_completaLong[NumVolta][equipe]=voltaLong();
           TempoInicialDeVolta=TempoFinalDeVolta;
          j=nf(NumVolta+1);
          NumVolta=NumVolta+1;
          TotalVota[equipe]=NumVolta;
        }
    }
    // CANCELAR VOLTA ATUAL  
    if (key=='z' || key=='Z') {
      Vsens=0;
    }
    
    
    //:::::::::::::::::::::::::::|| atualizacao de equipe||::::::::::::::::::::::::::;;
       if (key=='e' && ContagemRegressiva()<=0 || key=='E' && ContagemRegressiva()<=0) {//pausa o cronometro
      equipe=equipe+1;
    }
 }



}
