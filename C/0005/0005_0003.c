#include <stdio.h>

int main(void){ 
  int x = _Generic(x, float: 2.1714, double: 3.1415, default: 10);

  if(x == 10){
    printf("ok\n");
  } else{
    printf("ng\n");
  }

  return 0;
}
