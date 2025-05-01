 void Write_Data(){
 
 for (int i =0; i<datafile.length; i++){
         Item[i] = Item_kazu[i];
    }
    Status[0] = hungry ;
    Status[1]= money;
    Status[2] = muscle_p ;
    Status[3] = muscle_p_b ;
    Status[4] = money_b;
   for (int i = 0; i<4; i++){
   Other[i] =  TC[i];
   }
   Other[4] = d;
    
        String [] A = new String[datafile.length];
        for(int i = 0; i<A.length; i++){
        A[i] = Item[i]+","+Status[i]+","+Other[i]+","+Settings[i];
        }

    saveStrings( "data.txt", A );
 }
 
 void Reset_Data(){
     
        String [] A = new String[datafile.length];
        for(int i = 0; i<A.length; i++){
        A[0] = "0,94,0,50";
        A[1] = "0,200,0,0";
        if(i>=2){
        A[i] = "0,0,0,0";
        }
        }
    saveStrings( "data.txt", A );
    exit();
 }
