#include <stdio.h>
int main()
  {
    long long scac402[1]={1};
    long long sc401;

    sc401=scac402[0];
    if(1 == sc401){
      printf("** OK **\n");
    }else{
      printf("** NG **  CORRECT  VAL : %d\n", 1);
      printf("** NG **  COMPUTED VAL : %d\n", sc401);
    }
  }
