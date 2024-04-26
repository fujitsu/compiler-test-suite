#include <stdio.h>

int main(void){

  int x = _Generic(1, int: 100, default: 1000);
  float y = _Generic(1.0f, float: 2.0f, default: 1000);
  double z = _Generic(1.0, float: 2.0f, double: 3.0, default: 1000);

  if(x == 100 && y == 2.0f && z == 3.0){
    printf("ok\n");
  } else {
    printf("ng\n");
  }

  return 0;
}
