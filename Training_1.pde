int Training_1_sel = 0;
int button_CT2 = 0;//ボタンのクールタイム
int button_CT3 = 0;//ボタンのクールタイム


void TRAINING_1(){
  

  button_CT2 += 1; 
  button_CT3 += 1; 
   // println(button_CT2);
  
 tint(200,200,200,130) ;
 image(Muscle,20,20,440,450);
 noTint();
 
 fill(0,0,0);
 textSize(50);
 text("ふっきん",140,100);
  
  Menubar(11);
  
  //Timer(1);
  
  
  if(mouseC3 == true && Training_1_sel == 2 && button_CT2 > 20){
    println("aaaaaaaa");
    Training_1_sel = 0;
        button_CT3 = 0;//ボタンのクールタイム
  }
  
  
  
   if(mouseC1 == true){
    scene = 3;//筋トレ画面に戻る
    Training_1_sel = 0;
     Timer_CV = 0;
  }if(mouseC2 == true /*&& Training_1_sel == 0*/){//腹筋スタート
    Training_1_sel = 1;
    time_start = 1;
    set = 3;
    first_cd = true;
  }if(mouseC3 == true && Training_1_sel == 0 && button_CT3 > 20){
    Training_1_sel = 2;
    button_CT2 = 0;//ボタンのクールタイム
  }
  
  
  
  
  if(Training_1_sel == 2){
    fill(255,255,255,190);
    rect(50,135,380,300);
    fill(0,0,0);
    textSize(20);
    text("-メニュー内容-",170,170);
    text("・腹筋を30秒全力で行う x 3セット",80,210);
    text("・1セットごとに10秒の休憩",80,250);
    text("・獲得金："+(100+money_b)+"G",80,290);
    text("総プレイ回数："+TC[1],100,350);
    
    
  }
  
  if(Training_1_sel == 1){

    Timer(1);
    
    
    
    
  }
  
  
  
}
