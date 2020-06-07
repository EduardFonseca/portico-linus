
void layout() {
  image(wallpaper,0,0,width,height-2);
 
  //::::::::::::::::::::::::::::::::::::::||escrita dos tempos espacadosna tela principal||::::::::::::::::::::::::::::::::::::::
  if (NumVolta>=1) { 
    for (int h=1; h<=NumVolta; h=h+1) {
      j=nf(h);
      fill(255, 0, 0);
      textFont(f, 25);
      text(j+" - "+TempoVolta_completo[h-1][equipe], 10, 162+(h*VariabilidadeH));
    }
  }
  
}
