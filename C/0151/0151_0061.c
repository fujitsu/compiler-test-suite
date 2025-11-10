
















  #include <stdio.h>
  #include "001.h"

  #define DEFDAT1 -2
  #define DEFDAT2  2




int main()
{



int int_wk1;
int int_wk2;
int int_wk3;

float f_wk1;
float f_wk2;
float f_wk3;
float f_wk4;
float f_wk5;

int i_tbl[3][4]={ {1, 2, 3, 4},
                  {5, 6, 7, 8},
                  {9,10,11,12} };







  header("",
         "iteration-statement (do statement) test proc no.2");




{
  int_wk1 = 0;

  do{
    switch (int_wk1 % 4){
      case 1  : int_wk1 = int_wk1 + 1;
                break;
      case 2  : int_wk1 = int_wk1 + 2;
                break;
      case 3  : int_wk1 = int_wk1 + 3;
                break;
      default : int_wk1 = int_wk1 + 4;
                break;
    }
    int_wk1 ++;
  }while ((int_wk1 < 32767) &&
          ((((int_wk1 * 4) << 1) / 3) <= 100000) &&
          !(((int_wk1 >> 2) * int_wk1) % 5));

  ichck("SID01_01",7,int_wk1,"do statement (3 expression) test");
}



{
  int *intarr;

  int_wk1 = 9;
  int_wk2 = 4;
  int_wk3 = 0;
  intarr = i_tbl[0];

  do{
    int_wk1 += 1;
    int_wk2 += 2;
    int_wk3 ++;
  }while (((int_wk1 < i_tbl[2][3] + *intarr) &&           
           (int_wk1 > DEFDAT2 + 6)) ||
          ((int_wk2 > i_tbl[1][3] + *(intarr + 4)) ||
           (int_wk2 < DEFDAT1 + *(intarr + 9))));



  ichck("SID01_09",13,int_wk1,"do statement (4 expression) test");
}



{
  f_wk1 = 80.245f;
  f_wk2 = 65.49f;
  f_wk3 = 38.1456f;
  f_wk4 = 10.638f;
  f_wk5 =  6.527f;

  do{
    f_wk1 -= f_wk5;
    f_wk2 -= f_wk1 - f_wk2;
    f_wk3 += f_wk2 - f_wk3;
    f_wk4 -= 1.0012f;
    f_wk5 -= 1;
  }while (((f_wk1 > f_wk2) ||                             
           (f_wk2 > f_wk3)) &&
          ((f_wk3 > f_wk4) ||
           (f_wk4 > f_wk5)) &&
          (f_wk5 > 0));
  fchck("SID01_10", 55.556f, f_wk1, 0.000f,
        "do statement (5 expression) test");
}




  header("","do statement test proc no.2.") ;
}
