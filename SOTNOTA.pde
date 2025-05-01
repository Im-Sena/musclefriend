int sonota_sel = 0;
int sonota_menu = 1;
void SONOTA(){
  tint(200,200,200,130) ;
 image(Home1,20,20,440,450);
 noTint();
  fill(0,0,0);
 if(sonota_sel == 0){
 textSize(40); 
 text("その他",170,100);
 }
  Menubar(sonota_menu);
  
  
  
  
  if(mouseC1 == true && sonota_sel == 0){
    scene = 1;//home
  }if(mouseC1 == true && sonota_sel == 1){
    sonota_sel = 0;
    sonota_menu = 1;
  }
  if(mouseC2 == true){
   sonota_sel = 1;
   sonota_menu = 12;
  }if(mouseC3 == true && sonota_sel==0){
    scene = 11;//
  }
  
  if(sonota_sel == 1 ){
   Graph(); 
  }
  
  
  
  
}
