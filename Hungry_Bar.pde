int Hlimit = 0;

void Hungry_Bar(){
  fill(0,0,0,150);
  rect(345,40,100,20);
  fill(255,255,255,190);
  rect(346,41,98,18);
  fill(255,160,160,150);
  rect(348,43,constrain(hungry,0,94),14);//空腹ゲージ
  image(Niku,320,40,20,20);
  hungry = hungry - 0.00014;
 // println(hungry);
 
 if(hungry <= 0){
   Hlimit += 1;
 }
 
 if(Hlimit > 1080000){
   Reset_Data();
 }
 
 if(hungry >0 ){
   Hlimit = 0;
 }
 
 
}
