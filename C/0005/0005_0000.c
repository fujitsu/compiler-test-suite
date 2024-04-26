#include <stdio.h>

int main(void){
  int val_int;

  int x = _Generic(val_int, int: 10, double: 3.0);

  if(x == 10){
    printf("ok\n");
  } else{
    printf("ng\n");
  }

  return 0;
}
