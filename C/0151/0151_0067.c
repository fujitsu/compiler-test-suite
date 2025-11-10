
















  #include <stdio.h>
  #include "001.h"




int main()
{



int int_wk1;
int int_wk2;







  header("","jump-statement (continue statement) test proc.");




  int_wk1 = 0;

  while (int_wk1 < 100){
    int_wk1 = int_wk1 + 20;
    int_wk1 = int_wk1 * 3;
    int_wk1 = int_wk1 / 2;
    continue ;
    int_wk1 += 10;
  }

  ichck("SJC01_01",142,int_wk1,
        "continue statement and while statement combination test");




  int_wk1 = 0;
  int_wk2 = 0;

  do {
    do{
      int_wk2 = int_wk2 + 20;
      int_wk2 = int_wk2 * 2;
      int_wk1 += int_wk2;
      continue ;
      int_wk2 += 10;
    }while (int_wk2 < 100);
    int_wk2 = 0;
  }while (int_wk1 < 200);

  ichck("SJC01_02",320,int_wk1,
        "continue statement and do statement combination test");



  for (int_wk1 = 0; int_wk1 < 256; int_wk1 ++){
    for (int_wk2 = 0; int_wk2 < 64; int_wk2 ++){
      int_wk2 += 10;
      int_wk2 <<= 2;
      int_wk2 >>= 1;
      int_wk1 = int_wk1 + int_wk2;
    }
    if (int_wk1 < 200){
      continue;
      int_wk1 += 10;
    }
  }

  ichck("SJC01_03",458,int_wk1,
        "continue statement and for statement combination test");




  header("","continue statement test proc.") ;
}
