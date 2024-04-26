#include <stdio.h>

int main(void){

  int x = _Generic(x, int: 10, double: 3.0);

  if(x == 10){
    printf("ok\n");
  } else{
    printf("ng\n");
  }

  return 0;
}
