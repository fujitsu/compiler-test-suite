
















  #include <stdio.h>
  #include "001.h"




int main()
{



  int int_wk1;
  int int_wk2;
  int int_wk3;
  int int_wk4;







  header("","iteration-statement (for statement) test proc no.3.");





{
  int_wk1 = 0;
  for( ; ; ){
    int_wk1++;
    if(int_wk1 > 10)
      break;
  }
  ichck("SIF01_14",11,int_wk1,
        "for statement : enduring loop test");
}



{
  for (int_wk1 = 0; int_wk1 < 100; int_wk1++){
    for (int_wk2 = 0; int_wk2 < 10; int_wk2++)
      int_wk1 += int_wk2;
    for (int_wk3 = 0; int_wk3 < 5; int_wk3++)
      int_wk1 += int_wk3;
    for (int_wk4 = 0; int_wk4 < 3; int_wk4++)
      int_wk1 += int_wk4;
    switch (int_wk1 % 4){
      case 0  : break;
      case 1  : int_wk1 += 1;
                break;
      case 2  : int_wk1 += 2;
                break;
      case 3  : int_wk1 += 3;
                break;
      default : int_wk1 += 4;
                break;
    }
  }
  ichck("SIF01_15",123,int_wk1,"same nest for statement test");
}




  header("","for statement test proc no.3.") ;
}
