#include "000.h"

int main(void){
  typedef struct X FOO;

  FOO x;

  x.x = 10;

  if(x.x == 10){
    printf("ok\n");
  } else {
    printf("ng\n");
  }
  
  return 0;
}
