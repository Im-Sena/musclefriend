float gx = 30;
float gy = 400;
float gw = 420;
float gh = 255;

String [] T_Name = {"ふっきん","うでたて","ﾊﾞｰﾋﾟｰ","ｽｸﾜｯﾄ"};

void drawBar(int n, float v) {
  //fill(0,0,0);
  
  rect(gx + n * 80 - 30, gy - v, 30, v);
  textSize(12);
  
}

void Graph() {
  textSize(35);
  text("きろく",175,100); 
  textSize(20);
  text("-トレーニング別プレイ回数-",120,130); 
  
  fill(240);
  noStroke();
  rect(gx, gy-gh, gw, gh);
  
  stroke(0);
  fill(0,0,0);
  line(gx, gy, gx+gw, gy);
  line(gx, gy-gh, gx, gy);
  
  for (int i = 0; i < 4; i++) {
    drawBar(i+1, TC[i]);
    text(T_Name[i],gx + (i+1) * 80 - 30,420); 
    text(TC[i],gx + (i+1) * 80 - 26,395-TC[i]); 
    noStroke();
  }
  
  
  
   
}
