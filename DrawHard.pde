void DrawHard(){//ゲーム機の枠表示
  /* 
 line(20,20,20,500);
 line(width-20,20,width-20,500);
 line(20,20,width-20,20);
 line(20,500,width-20,500);
 line(0,520,width,520);
 */
 Colorselect();
 rect(0,0,width,height);// 本体の外観
 Colorselect_Shadow();
 rect(width-3,0,width,height);//本体の影
 rect(0,height-3,width,height);
 fill(0,0,0);
 rect(5,5,width-10,520);//黒い液晶のフチ
 fill(255,255,255);
 textSize(30);
 //text("MUSCLE-BOY",100,513);
 image(H_Logo,80,470,300,70);
 rect(20,20,width-40,460);//真っ白の画面
 

 if(mouseP1 == true){//ボタンが押下された時の処理
   DrawButton_A1();
 }else if(mouseP2 == true){
   DrawButton_A2();
 }else if(mouseP3 == true){
   DrawButton_A3();
 }else{
   DrawButton();
 }
}

void DrawButton_Shadow(){//ボタンの影
  noStroke();
  fill(70,70,70);
 circle(width/2+1,580+1,35);
 circle(width/4+1,580+1,35);
 circle(3*width/4+1,580+1,35);
}

void DrawButton(){//何も押されていないときのボタン
 //noStroke();
 DrawButton_Shadow();
 fill(255,255,255);
 circle(width/2,580,30);
 circle(width/4,580,30);
 circle(3*width/4,580,30);
}



void DrawButton_A1(){//ボタンが押された時のボタンの色変更
 DrawButton_Shadow();
 fill(255,255,255);
 circle(width/2,580,30);
 fill(180,180,180);
 circle(width/4,580,30);
 fill(255,255,255);
 circle(3*width/4,580,30);
}

void DrawButton_A2(){//ボタンが押された時のボタンの色変更
  DrawButton_Shadow();
 fill(180,180,180);
 circle(width/2,580,30);
 fill(255,255,255);
 circle(width/4,580,30);
 circle(3*width/4,580,30);
}

void DrawButton_A3(){//ボタンが押された時のボタンの色変更
 DrawButton_Shadow();
 fill(255,255,255);
 circle(width/2,580,30);
 fill(255,255,255);
 circle(width/4,580,30);
 fill(180,180,180);
 circle(3*width/4,580,30);
}

void Colorselect(){
 if(hard_color == 0){
 fill(150,150,255);//B
 }else if(hard_color == 1){
 fill(255,150,150);//R
 }else if(hard_color == 2){
 fill(150,255,150);//G
 }else if(hard_color == 3){
 fill(150,150,150);//GR
 } 
}

void Colorselect_Shadow(){
 if(hard_color == 0){
 fill(120,120,255);//B
 }else if(hard_color == 1){
 fill(255,120,120);//R
 }else if(hard_color == 2){
 fill(120,255,120);//G
 }else if(hard_color == 3){
 fill(120,120,150);//GR
 } 
}
