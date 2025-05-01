import ddf.minim.*;
   Minim minim;  //Minim型変数であるminimの宣言
   
   

int scene = 0;//シーン切り替え用変数
float sec = 0;
float secR = 0;

int  d  =  day( ) ; 


 String [] datafile;
 float [] Item,Status,Other,Settings;
 //float [] data;

//----------------
//画像
  PImage Home1;
 // PImage Home2;
  PImage Shop;
  PImage Muscle;
  PImage Niku;
  PImage H_Logo;
  PImage Logo;
  PImage C1;
  PImage C2;
  PImage C3;
  PImage C4;
  PImage C5;
  PImage C12;
  PImage C22;
  PImage C32;
  PImage C42;
  PImage HL;
  //PImage C52;
//----------------

//----------------
//オーディオ
   AudioPlayer Button;  //サウンドデータ格納用の変数
   AudioPlayer Beep;
   AudioPlayer Money;
   AudioPlayer Button_Cute;
   AudioPlayer Gong_S;
   AudioPlayer Gong_F;
   AudioPlayer Set;
   AudioPlayer TBGM;
   AudioPlayer KAJINO;
 //----------------


void setup(){
  size(480,640,OPENGL);
  PFont font = createFont("JFドットK12",30);
  textFont(font);
  mouseC1 = false;
  mouseC2 = false;
  mouseC3 = false;
  
  //-------------------------------------
  //画像インポート
    Home1 = loadImage("Home_img_1.png");
  //  Home2 = loadImage("Home_img_2.png");
    Shop = loadImage("Shop_img_1.png");
    Muscle = loadImage("Muscle_img_1.png");
    Niku = loadImage("niku.png");
    H_Logo = loadImage("Hard_Logo.png");
    Logo = loadImage("logo3.png");
    C1 = loadImage("C1.png");
    C2 = loadImage("C2.png");
    C3 = loadImage("C3.png");
    C4 = loadImage("C4.png");
    C5 = loadImage("C5.png");
    C12 = loadImage("C1_2.png");
    C22 = loadImage("C2_2.png");
    C32 = loadImage("C3_2.png");
    C42 = loadImage("C4_2.png");
    HL =loadImage("Higlow.png");
   // C52 = loadImage("C5_2.png");
    
   //-------------------------------------
  
  //-------------------------------------
  //SEインポート
   minim = new Minim(this);  //初期化
   Button = minim.loadFile("button.mp3");
   Beep = minim.loadFile("beep.mp3");
   Money = minim.loadFile("money.mp3");
   Button_Cute = minim.loadFile("button_cute.mp3");
   Gong_S = minim.loadFile("start_gong.mp3");
   Gong_F = minim.loadFile("finish_gong.mp3");
   Set = minim.loadFile("set.mp3");
   TBGM = minim.loadFile("titlebgm.mp3");
   KAJINO = minim.loadFile("kajino.mp3");
      
   //-------------------------------------
    Money.setGain(-20) ;
    
    //TBGM.loop();
    //KAJINO.loop();
    
  //-------------------------------------
  //データインポート
     datafile = loadStrings("data.txt");
     
     Item = new float[datafile.length];
     Status = new float[datafile.length];
     Other = new float[datafile.length];
     Settings = new float[datafile.length];
     
     for (int i = 0; i < datafile.length; i++) {
        String [] A = datafile[i].split(",");
        Item[i] = float(A[0]);
        Status[i] = float(A[1]);
        Other[i] = float(A[2]);
        Settings[i] = float(A[3]);
     }
     
    for (int i =0; i<datafile.length; i++){
        Item_kazu[i] = int(Item[i]);
    }
    hungry = Status[0];
    money = int(Status[1]);
    muscle_p = int(Status[2]);
    muscle_p_b = int(Status[3]);
    money_b = int(Status[4]);
    vol = int(Settings[0]);
    hard_color = int(Settings[1]);
    for(int i = 0; i<4; i++){
     TC[i] = int(Other[i]) ;
     println(TC[i]);
    }
    
    
  if(Other[4]-d != 0){
   hungry = hungry-40; 
  }
  
  if(Other[4]!= 0 && Other[4]-d != 0){
   muscle_p -= 300;
  }
  

  
  
  //-------------------------------------
  
}

void draw(){

  Button();//ボタン描画
  DrawHard();//ゲーム機描画
  Clock();//時計表示
  

  
  if(scene == 0){
    
   Title();
   if(mouseC1 == true){
   Write_Data();
   exit();
  }if(mouseC2 == true){
    scene = 1;//home
    TBGM.pause();
  }if(mouseC3 == true){
    scene = 5;//settings
  }
  
  
  }else if(scene == 1){
    
   Home();
   if(mouseC1 == true){
    scene = 2;//あそぶ
  }if(mouseC2 == true){
    scene = 3;//筋トレ
  }if(mouseC3 == true){
    scene = 4;//ショップ
  }
  
  }else if(scene == 2){
    
    SONOTA();
   
    
  }else if(scene == 3){
    
    MUSCLE();
/*   if(mouseC1 == true){
    scene = 1;//home
  }if(mouseC2 == true){
    scene = 3;//
  }if(mouseC3 == true){
    scene = 4;//
  }*/
  
  }else if(scene == 4){
    
    ITEM();

  
  }else if(scene == 5){
    
    Setting();
  
  }else if(scene == 6){
    
    SHOP();
  
  }
  
  else if(scene == 7){
    
    TRAINING_1();
  
  }else if(scene == 8){
    
    TRAINING_2();
  
  }else if(scene == 9){
    
    TRAINING_3();
  
  }else if(scene == 10){
    
    TRAINING_4();
  
  }else if(scene == 11){
    
    Highlow();
  
  }else if(scene == 12){
    
    HL_play();
  
  }
  
  if(scene != 0 && scene != 5 && scene !=6 && item_age != 10 && Training_1_sel != 2 && Timer_CV != 1 && Training_2_sel != 2 && Training_3_sel != 2 && Training_4_sel != 2 && sonota_sel != 1 && highlow_sel != 1 && scene!= 12){
   Character();
  // Hungry_Bar();
  }
  
   if(scene != 0 && scene != 5 && scene !=6  ){
  // Character();
   Hungry_Bar();
  }
  
  ClickReset();
}
