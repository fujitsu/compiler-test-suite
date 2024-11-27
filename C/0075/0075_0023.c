#include <stdio.h>

int main(){
  static int i01[2];
  union
  {
    int i02[2];
    int i03[2];
  }u01;
  static int i;

  for(i = 0; i < 2; i++){
    u01.i02[i] = 10;
  }

  for(i = 0; i < 2; i++){
    if(u01.i02[i] != 1000){
      u01.i02[i] = 100;
      if(u01.i02[i] != 1000){
        u01.i02[i] = 100;
        if(u01.i02[i] != 1000){
          i01[i] = u01.i03[i];
          printf("i01[%d]     = %d\n", i, i01[i]);
          printf("u01.i02[%d] = %d\n", i, u01.i02[i]);
          printf("u01.i03[%d] = %d\n", i, u01.i03[i]);
        }
      }
    }
  }
}

