#include <stdio.h>

struct {
  int a;
  struct {
    double b;
  };
} x;

int main(void){
  x.a = 100;
  x.b = 3.14;

  if(x.a == 100 && x.b == 3.14){
    printf("ok\n");
  } else {
    printf("ng\n");
  }

  return 0;
}
