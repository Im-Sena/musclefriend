int msc_sel = 2;
int button_CT = 0;//ボタンのクールタイム

void MUSCLE(){


  if(msc_sel ==2){
 tint(200,200,200,130) ;
 image(Home1,20,20,440,450);
 noTint(); 
  }else{
 tint(200,200,200,130) ;
 image(Muscle,20,20,440,450);
 noTint();  
  }
  Menubar(msc_sel);
 fill(0,0,0);
 textSize(40);
 text("きんとれ",150,100);
  
  button_CT += 1 ;
  println(button_CT);
  
  if(mouseC2 == true && msc_sel == 7 && button_CT > 20){
    scene = 7;//トレーニング１
  }if(mouseC3 == true && msc_sel == 7){
    scene = 8;//トレーニング２
  } if(mouseC2 == true && msc_sel == 8 && button_CT > 20){
    scene = 9;//トレーニング3
  }if(mouseC3 == true && msc_sel == 8){
    scene = 10;//トレーニング4
  }
  
  if(mouseC1 == true && msc_sel == 2){
    scene = 1;//home
  }if(mouseC1 == true && (msc_sel == 7 || msc_sel ==8)){
    msc_sel = 2;//サブメニューに行った際に発動
  }if(mouseC2 == true){
    msc_sel = 7;//トレーニング１
    button_CT = 0 ;
  }if(mouseC3 == true){
    msc_sel = 8;//トレーニング２
  }
  

  
}
