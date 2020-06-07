//variaveis linus_novo
PFont f;
float TempoVolta;
long TempoVolta_completaLong[][]=new long[100][10];
String TempoVolta_completo[][]=new String[100][10];
String MelhorTempoEquipe[]=new String[10];
long MelhorTempoEquipeLong[]=new long[10];
int NumVolta=0;// variavel auxiliar para string de tempo 
int VariabilidadeH=20; //altura na qual o tempo de cada volta e deslocado
String j;//variavel String axiliar (linha 42 para armazenar o valor de h no formato string;
PImage wallpaper;
int Vsens;
int TotalVota[]=new int[10];

//:::::::::::||variaveis para armazenamento de dados das equipes||:::::::::
int equipe=0;
String NomeEquipe[]=new String[10];
int posicao[]=new int[10];
int Melhor_volta[]=new int[10];

//variaveis calculo de tempo
float TempoMax_mil=180000;// se quisermos alterar o tempod e cada equipe basta tornar essa variavel em um vetor

////::::::::::::::::::::::::: |variaveis|:::::::::::::::::::::::::::::::
long TempoCorrido_volta=0;// mesma funcao da variavel TempoCorrido, usada somente para o caculo de voltas
long TempoFinalDeVolta, TempoInicialDeVolta;


//vatiaveis layout int offset=2;
int offset=2;
float frac=5.3;
float imageX, imageY;

//variaveis cronometro

long TempoInicio=0;
long TempoFinal=0;
long TimerLogo=0;
long TempoCorrido=0;//desconta o tempo q o cronometro ficou parado
boolean TempoCorrendo= false;
