String Item_name [] = {"チョコレート","プロテイン","サラダチキン","ヨガマット","ダンベル"};
int item_sel = 0;//アイテムの選択状態
int item_age = 9;//あげるを選択されていることを知らせる
int nb = 0;

void ITEM(){
 tint(200,200,200,130) ;
 image(Home1,20,20,440,450);

  if(item_age == 9){
  fill(0,0,0);
  textSize(40);
  text("あいてむ",160,100); 
  }
 
 if(item_age == 10){
  fill(255,255,255,190);
  rect(50,115,380,230);
  rect(50,350,380,60);
  
  fill(0,0,0);
  textSize(13);
  text(Item_info[item_sel][0],80,372);
  text(Item_info[item_sel][1],80,392);
  
 
  textSize(20);
  for(int i = 0; i< Item_name.length; i++){
  text(Item_name[i],100,160+(35*i));
  text("所持数："+Item_kazu[i],300,160+(35*i));
  }
  

  
  circle(75,155+(item_sel*35),5); 
  
  fill(0,0,0);
  textSize(40);
  text("ITEM",190,100);
 }
 noTint();
 

  Menubar(item_age);

  
  
  
  
  if(mouseC2 == true && item_age == 10 && item_sel == 0){//チョコあげる
    if(Item_kazu[0]>0){
      Item_kazu[0] -= 1;
      muscle_p -= 200;
      hungry += 94;
      Button_Cute.play();  //再生
      Button_Cute.rewind();//巻き戻し
    }else{
      println("アイテム数不足");
    }
  }
    
   if(mouseC2 == true && item_age == 10 && item_sel == 1){//プロテインあげる
    if(Item_kazu[1]>0){
      Item_kazu[1]-=1;
      muscle_p += 0;
      hungry += 94;
      Button_Cute.play();  //再生
      Button_Cute.rewind();//巻き戻し
    }else{
      println("アイテム数不足");
    }
  }
  
  
  if(mouseC2 == true && item_age == 10 && item_sel == 2){//サラダチキンあげる
    if(Item_kazu[2]>0){
      Item_kazu[2]-=1;
      muscle_p += 50;
      hungry += 94;
      Button_Cute.play();  //再生
      Button_Cute.rewind();//巻き戻し
    }else{
      println("アイテム数不足");
    }
  }
    
    if(mouseC2 == true && item_age == 10 && item_sel == 3){//ヨガマットあげる
    if(Item_kazu[3]>0){
      Item_kazu[3]-=1;
      muscle_p_b += 25;
      Button_Cute.play();  //再生
      Button_Cute.rewind();//巻き戻し
      println("マッスルポイント増加"+muscle_p_b+"%");
    }else{
      println("アイテム数不足");
    }
    }
    
     if(mouseC2 == true && item_age == 10 && item_sel == 4){//ダンベルあげる
    if(Item_kazu[4]>0){
      Item_kazu[4]-=1;
      muscle_p_b += 25;
      money_b += 25;
      Button_Cute.play();  //再生
      Button_Cute.rewind();//巻き戻し
      println("マッスルポイント増加"+muscle_p_b+"%");
      println("マネー増加"+money_b+"%");
    }else{
      println("アイテム数不足");
    }
}

 if(mouseC1 == true && item_age == 9){
    scene = 1;//home
  }if(mouseC1 == true && item_age == 10){
    item_age = 9;
  }if(mouseC2 == true && item_age ==9){
   item_age = 10;
  }if(mouseC3 == true && item_age == 10){
    item_sel += 1;
    if(item_sel > 4){
      item_sel = 0;
    }
  }if(mouseC3 == true && item_age == 9){
    scene = 6;//SHOP
  }

}
