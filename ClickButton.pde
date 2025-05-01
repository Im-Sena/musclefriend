Boolean mouseP1,mouseP2,mouseP3;
Boolean mouseC1,mouseC2,mouseC3;
int presstime = 0;//ボタンを押している時間(経過フレームで計測)
int button2_mode = 0;//ボタンの押している時間をリセットする際に使う変数
void Button(){
  
if (mousePressed) {//ボタンを押している状態の検出
    if (mouseX>=105 && mouseX<=135 && mouseY>=565 && mouseY<=595) {
     mouseP1 = true;
    }else if (mouseX>=225 && mouseX<=255 && mouseY>=565 && mouseY<=595) {
     mouseP2 = true;
     presstime +=  1;
     println(presstime);
     if(presstime > 120 && button2_mode == 0){//ボタンを約2s以上押した際に発動
       scene = 0;
     }
     if(button2_mode == 1){//ボタンを押している時間をリセット
       presstime = 0;
       button2_mode = 0;
     }

    }else if (mouseX>=345 && mouseX<=375 && mouseY>=565 && mouseY<=595) {
     //println("button3");
     mouseP3 = true;
    }
  }else{
    mouseP1 = false;
    mouseP2 = false;
    mouseP3 = false;
  }
  
}

void mouseClicked(){//ボタンのクリックの検出
  
  if (mouseX>=105 && mouseX<=135 && mouseY>=565 && mouseY<=595) {
    // println("buttonC1");
     mouseC1 = true;
     presstime = 0;
     Button.play();  //再生
     Button.rewind();//巻き戻し
    }else if (mouseX>=225 && mouseX<=255 && mouseY>=565 && mouseY<=595 && presstime <120 ) {
     //println("buttonC2");
     mouseC2 = true;
     println("clicked");
     button2_mode = 1;
     Button.play();  //再生
     Button.rewind();//巻き戻し
    }else if (mouseX>=225 && mouseX<=255 && mouseY>=565 && mouseY<=595 && presstime >120 ) {
     button2_mode = 1;
     Button.play();  //再生
     Button.rewind();//巻き戻し
    }else if (mouseX>=345 && mouseX<=375 && mouseY>=565 && mouseY<=595) {
     //println("buttonC3");
     mouseC3 = true;
     presstime = 0;
     Button.play();  //再生
     Button.rewind();//巻き戻し
  }
  
}

void ClickReset(){
  mouseC1 = false;
  mouseC2 = false;
  mouseC3 = false; 
}
