#include <stdio.h>

typedef unsigned int UINT;

typedef unsigned int UINT; // C11's OK

int main(void){
  UINT x = 10;

  if(x == 10){
    printf("ok\n");
  } else {
    printf("ng\n");
  }

  return 0;
}
