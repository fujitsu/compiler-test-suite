#include <stdio.h>

struct Outer_struct {
  struct { int a; };
  
  union { int b; };
};

int main(void){
  struct Outer_struct x;

  x.a = 10;
  x.b = 100;

  if(x.a == 10 && x.b == 100){
    printf("ok\n");
  } else{
    printf("ng\n");
  }

  return 0;
}
