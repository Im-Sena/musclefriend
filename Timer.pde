int time_reset = 0;//時間をリセットするための変数
int time_max = 0;//カウントダウンを開始する値
int time_start = 0;//時間をリセットリセットするタイミングで1にする
int set = 0;//筋トレのセット数
int rest_time = 0;//筋トレの休憩時間
int text_view_time = 4;
int Timer_CV = 0;//キャラクターを隠す際に使用

boolean first_cd = true;
boolean training_TF = true;//筋トレ中か休憩中か判定するための変数

String Tmenu [] ={"null","腹筋","腕立て","ﾊﾞｰﾋﾟｰ","ｽｸﾜｯﾄ"};
                    
int [] TC = {0,0,0,0};//トレーニングのプレイ回数

void Timer(int mode){
  
  if(mode == 1){
   time_max = 30;
   rest_time = 10;
  }else if(mode == 2){
   time_max = 30;
   rest_time = 15;
  }else if(mode == 3){
   time_max = 40;
   rest_time = 10;
  }else if(mode == 4){
   time_max = 40;
   rest_time = 15;
  }
  
  if(time_start == 1){//タイマーリセット用
   time_reset = millis()/1000; 
   time_start = 0;
  }
  
  int time  = millis()/1000 - time_reset;
  
  if(first_cd == true && 5-time != -1){
  textSize(25);
  text("スタートまで"+constrain(5-time,0,100),140,300);
  }
  
  if(first_cd == true && 5- time == -1){
    time_reset = millis()/1000;
    first_cd = false;
    Timer_CV = 1;
    Gong_S.play();  //再生
    Gong_S.rewind();//巻き戻し
    
  }
  
  
  if(first_cd == false){
  
  
  if(set != 0 && training_TF == true){//カウントの表示
  textSize(90);
  text(constrain(time_max-time,0,100),210,350);
  textSize(30);
  text("全力で"+Tmenu[mode]+"をしろ！！",100,160);
  text("残りセット:"+(set-1),160,210);
  }else if(set != 0 && training_TF == false){
  textSize(90);
  text(constrain(rest_time-time,0,100),210,350);
  textSize(30);
  text("休憩をしろ！！",150,160);
  text("残りセット:"+(set-1),160,210);
  }
  
  if(time_max-time == -1 && training_TF == true && set!=0){
    //time_start = 1;
    time_reset = millis()/1000; 
    training_TF = false;
    Set.play();  //再生
    Set.rewind();//巻き戻し
    if(set == 1){
     set = 0; 
     println("残りセット"+set);
    }
  }
  
  

  
    if(rest_time-time == -1 && training_TF == false && set!=0){
   // time_start = 1;
   time_reset = millis()/1000; 
    training_TF = true;
    set -= 1;
    println("残りセット"+set);
    Gong_S.play();  //再生
    Gong_S.rewind();//巻き戻し
  }
  

  
  
  
  if(set == 0){//筋トレ終了の際の処理
  //println("OWARI");
  if(time == 0){
   Gong_F.play();  //再生
   Gong_F.rewind();//巻き戻し 
  }
    if(text_view_time-time != 0){
    textSize(40);
    text("終了！！",180,300);
    }else if(text_view_time-time == 0 && mode == 1 ){//トレーニング１に戻る際の処理
      Timer_CV = 0;
      Training_1_sel = 0;
      money = money + (100+money_b);
      muscle_p = muscle_p + (100+muscle_p_b);
      time_start = 1;
      TC[0] += 1;
    }else if(text_view_time-time == 0 && mode == 2){//トレーニング2に戻る際の処理
      Timer_CV = 0;
      Training_2_sel = 0;
      money = money + (100+money_b);
      muscle_p = muscle_p + (100+muscle_p_b);
      time_start = 1;
      TC[1] += 1;
    }else if(text_view_time-time == 0 && mode == 3){//トレーニング3に戻る際の処理
      Timer_CV = 0;
      Training_3_sel = 0;
      money = money + (100+money_b);
      muscle_p = muscle_p + (100+muscle_p_b);
      time_start = 1;
      TC[2] += 1;
    }else if(text_view_time-time == 0 && mode == 4){//トレーニング4に戻る際の処理
      Timer_CV = 0;
      Training_4_sel = 0;
      money = money + (100+money_b);
      muscle_p = muscle_p + (100+muscle_p_b);
      time_start = 1;
      TC[3] += 1;
    }
    
  }
  
  

  
  }
  
  
  
  
  
  
  
  
  
}
