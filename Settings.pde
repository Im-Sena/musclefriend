int vol = 50;
int hard_color = 0;
int set_sel = 0;//０→vol 1→カラー
String [] body_color = {"Blue","Red","Green","Gray"};

void Setting(){
  
  Menubar(5);
  
  fill(0,0,0);
  textSize(40);
  text("せってい",150,120);
  textSize(20);
  text("VOL",80,220);
  text("Color",80,280);
  fill(255,100,100);
  text("ﾃﾞｰﾀﾘｾｯﾄ",80,340);
  fill(0,0,0);
  Colorselect();
  text(body_color[hard_color],150,280);
  
  
  //ボリュームの枠
  fill(0,0,0);
  rect(135,195,210,30);
  fill(255,255,255);
  rect(137,197,206,26);
  //
  
  //ボリュームのバー
  fill(0,0,0);
  rect(140,200,200*(vol/100.0),20);
  circle(60,212+(set_sel*60),5);
  //
  
  if(mouseC2 == true && set_sel == 0){//ボリュームが選択された際の動作
    
    vol = vol + 10;
    println("vol："+vol);
    Button.setGain(vol-40);
    Beep.setGain(vol-40);
    Money.setGain(vol-50) ;
    Button_Cute.setGain(vol-40);
    Gong_S.setGain(vol-40);
    Gong_F.setGain(vol-40);
    Set.setGain(vol-40);
    TBGM.setGain(vol-40);
    KAJINO.setGain(vol-40);
    if(vol > 100){
     vol = 0; 
    }
    Settings[0] = vol;
    }
    
    if(mouseC2 == true && set_sel == 1){//カラーが選択された際の動作

      hard_color += 1;
      println(hard_color);
      if(hard_color > 3){
        hard_color = 0;
      }
    Settings[1] = hard_color;
    }
    
    if(mouseC2 == true && set_sel == 2){//カラーが選択された際の動作

      Reset_Data();
    
    }
    
  if(mouseC3 == true){
    set_sel += 1;
    println(set_sel);
    if(set_sel > 2){//項目数に応じて変更
     set_sel = 0; 
    }
  }
  
   if(mouseC1 == true){
    scene = 0;//home
  }


}
