#include <stdio.h>
int main()
  {
    short scac402[2]={1,1};
    short sc401;

    sc401=scac402[0];
    if(1 == sc401){
      printf("** OK **\n");
    }else{
      printf("** NG **  CORRECT  VAL : %d\n", 1);
      printf("** NG **  COMPUTED VAL : %d\n", sc401);
    }
  }
