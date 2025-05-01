int highlow_sel = 0;
int button_CT10 = 0;//ボタンのクールタイム
int button_CT11 = 0;//ボタンのクールタイム

void Highlow(){
   button_CT10 += 1; 
  button_CT11 += 1; 
  
  tint(200,200,200,170) ;
 image(HL,20,20,440,460);
 noTint();
  
  Menubar(13);
  
   textSize(40); 
  text("ハイロー",170,100);
  
  
  if(mouseC1 == true){
    highlow_sel = 0;
   scene = 2;
  }if(mouseC2 == true){
   if(money >=100){
   money = money-100;
   HL_return = 100;
   scene = 12;//home
   card1 = int(random(1,14));
   card2 = int(random(1,14));
   }else{
     Beep.play();
     Beep.rewind();
   }
  }
  
   if(mouseC3 == true && highlow_sel == 0 && button_CT10 > 20){
    highlow_sel = 1;
    button_CT11 = 0;//ボタンのクールタイム
  }if(mouseC3 == true && highlow_sel == 1 && button_CT11 > 20){
    highlow_sel = 0;
    button_CT10 = 0;//ボタンのクールタイム
  }
  
  
  

  if(highlow_sel == 1){
    fill(255,255,255,190);
    rect(50,135,380,300);
    fill(0,0,0);
    textSize(15);
    text("-ゲーム内容-",170,170);
    text("ハイアンドローとは、出された1枚のカードと",80,210);
    text("比較して、次に出されるカードの数字が'ハイ'",80,230);
    text("か'ロー'かに賭けるシンプルなゲームです。",80,250);
    text("賭け金：100G",80,330);
    text("リターン:2倍",80,360);
 //   text("総プレイ回数："+TC[4],100,350);
    
    
  }
  
  
  
}
