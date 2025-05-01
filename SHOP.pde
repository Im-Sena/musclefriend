String Shop_Item [] = {"チョコレート(10G)","プロテイン(100G)","サラダチキン(200G)","ヨガマット(1000G)","ダンベル(1500G)"};
String Item_info [][] = {
                        {"チョコレート。","空腹は回復するが、筋トレの効果が薄れてしまう。"},
                        {"プロテイン。","空腹が回復する。"},
                        {"サラダチキン。","空腹が回復する。筋肉に良い。"},
                        {"ヨガマット。","筋トレの効果があがる。"},
                        {"ダンベル。","筋トレの効果が上がり、お金もたまりやすくなる。"},
                       };
int Item_price [] = {10,100,200,1000,1500};
int shop_sel = 0;
void SHOP(){
  tint(200,200,200,130) ;
  image(Shop,20,20,440,450);
  fill(0,0,0);
  textSize(40); 
  text("SHOP",190,100);
  fill(255,255,255,190);
  rect(50,115,380,230);
  rect(50,350,380,60);
  noTint();
  Menubar(3);
  
  text("所持金："+money+"G",25,440);
  
  textSize(13);
  text(Item_info[shop_sel][0],80,372);
  text(Item_info[shop_sel][1],80,392);
  
  
  textSize(20);
  for(int i = 0; i< Shop_Item.length; i++){
  text(Shop_Item[i],100,160+(35*i));
  text("所持数："+Item_kazu[i],300,160+(35*i));
  }
  

  
  circle(75,155+(shop_sel*35),5);
  
  if(mouseC3 == true){
    shop_sel += 1;
    if(shop_sel>4){
      shop_sel = 0;
    } 
  }
  
  if(mouseC1 == true){
    scene = 4;//home
  }
  
  if(mouseC2 == true && shop_sel == 0){//チョコ購入
    if(money >= Item_price[0]){
      //chocolate += 1;
      Item_kazu[0]+=1;
      money = money - Item_price[0];
     Money.play();  //再生
     Money.rewind();//巻き戻し
    }else{
      println("お金不足");
    }
  }
  
  if(mouseC2 == true && shop_sel == 1){//プロテイン購入
    if(money >= Item_price[1]){
     // protein += 1;
      Item_kazu[1]+=1;
      money = money - Item_price[1];
      Money.play();  //再生
     Money.rewind();//巻き戻し
    }else{
      println("お金不足");
      
    }
  }
  
  if(mouseC2 == true && shop_sel == 2){//サラダチキン購入
    if(money >= Item_price[2]){
     // saladac += 1;
      Item_kazu[2]+=1;
      money = money - Item_price[2];
      Money.play();  //再生
     Money.rewind();//巻き戻し
    }else{
      println("お金不足");
    }
  }
  
  if(mouseC2 == true && shop_sel == 3){//ヨガマット購入
    if(money >= Item_price[3]){
     // yogamat += 1;
      Item_kazu[3]+=1;
      money = money - Item_price[3];
      Money.play();  //再生
     Money.rewind();//巻き戻し
    }else{
      println("お金不足");
    }
  }
  
    if(mouseC2 == true && shop_sel == 4){//ダンベル購入
    if(money >= Item_price[4]){
     // danberu += 1;
      Item_kazu[4]+=1;
      money = money - Item_price[4];
      Money.play();  //再生
     Money.rewind();//巻き戻し
    }else{
      println("お金不足");
    }
  }
  
  
}
