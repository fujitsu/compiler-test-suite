#include <stdio.h>

_Thread_local int x = 10;

extern _Thread_local float y;

_Thread_local static double z = 3.14;


int main(void){

  if(x == 10 && z == 3.14){
    printf("ok\n");
  } else {
    printf("ng\n");
  }

  return 0;
}
