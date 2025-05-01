int HL_return =0;//掛け金のリターン
int gamescene = 0;
int card1 = 0;//カードの値
int card2 = 0;//カードの値（右）
int win_count = 0;
int HLchoose = 0;//ハイローどっちえらんだか　2ハイ　1ロー
int win = 0; //1win 2lose 3drew
int button_CT12 = 0;//ボタンのクールタイム
int button_CT13 = 0;//ボタンのクールタイム


void HL_play(){
  button_CT12 += 1; 
  button_CT13 += 1; 
  
 tint(200,200,200,170) ;
 image(HL,20,20,440,460);
 noTint();
 fill(0,0,0);
 textSize(20);
 text("勝利で"+2*(HL_return)+"G獲得!",40,80);
  
  Menubar(14+win);
  

  
  
  
  fill(255,255,255);
  rect(50,230,150,200);
  rect(280,230,150,200);
  
  if(gamescene == 0){
  textSize(40); 
  text("ハイ？ロー？",120,130);
  fill(0,0,0);
  textSize(80); 
  text(card1,90,360);
  //text(card2,330,360);
  }
  
  
  
   if(gamescene == 1 && win == 1){//勝ったとき
      textSize(40); 
      text("WIN!",170,130);
      fill(0,0,0);
      textSize(80); 
      text(card1,90,360);
      text(card2,330,360);
  
  }
  
  
   if(gamescene == 1 && win == 2){
      textSize(40); 
      text("LOSE..",170,130);
      fill(0,0,0);
      textSize(80); 
      text(card1,90,360);
      text(card2,330,360);
  
  }
  
  if(gamescene == 1 && win == 3){
      textSize(40); 
      text("DREW",170,130);
      fill(0,0,0);
      textSize(80); 
      text(card1,110,360);
      text(card2,330,360);
  
  }
  
  
  
  
  
  
  if(mouseC1 == true && gamescene == 0){//戻る
   scene = 11; 
  }
  
  if(mouseC2 == true && gamescene == 0){//ロー
   
   HLchoose = 1;
   if(card1>card2 && HLchoose == 1){
     win = 1;
     HL_return = 2*HL_return;
   }else if(card1<card2 && HLchoose == 1){
     win = 2;
     HL_return = 0;
   }else if(card1 == card2 && HLchoose == 1 ){
     win = 3;
   }  
   gamescene = 1;
  }
  
  
  
  
   if(mouseC3 == true && gamescene == 0 && button_CT12 > 20){//ハイ
    HLchoose = 2;
   if(card1<card2 && HLchoose == 2){
     win = 1;
     HL_return = 2*HL_return;
   }else if(card1>card2 && HLchoose == 2){
     win = 2;
     HL_return = 0;
   }else if(card1 == card2 && HLchoose == 2 ){
     win = 3;
   }  
   gamescene = 1;
   button_CT13 =0;
  }
  
  
  if(mouseC1 == true && gamescene == 1 && win ==1){//勝ってやめる
    money = money + HL_return;
    gamescene = 0;
    win = 0;
    scene = 11;

  }if(mouseC1 == true && gamescene == 1 && win ==2){//負けてやめる
    gamescene = 0;
    win = 0;
    scene = 11;

  }if(mouseC1 == true && gamescene == 1 && win ==3){//引き分けでやめる
    money = money + HL_return;
    win = 0;
    gamescene = 0;
    scene = 11;

  }
  
  
  
  if(mouseC2 == true){

  }
  
  if(mouseC3 == true && gamescene == 1 && win ==1 && button_CT13 > 20){//勝ちで続ける
    card1 = int(random(1,14));
    card2 = int(random(1,14));
    gamescene = 0;
    win = 0;
    button_CT12 =0;
  }if(mouseC3 == true && gamescene == 1 && win ==2 && button_CT13 > 20){//負けで続ける
    if(money >=100){
   money = money-100;
   HL_return = 100;
   card1 = int(random(1,14));
   card2 = int(random(1,14));
   gamescene = 0;
   win = 0;
   }else{
     Beep.play();
     Beep.rewind();
   }
   button_CT12 =0;
  }if(mouseC3 == true && gamescene == 1 && win ==3 && button_CT13 > 20){//引き分けで続ける
    card1 = int(random(1,14));
    card2 = int(random(1,14));
    gamescene = 0;
    win = 0;
    button_CT12 =0;
  }
  

  
  
}
