#include <stdio.h>

union Outer_union {
  struct { int a; };
  
  union { int b; };
};

int main(void){
  union Outer_union y;

  y.a = 10;
  y.b = 100;

  if(y.a == 100 && y.b == 100){
    printf("ok\n");
  } else{
    printf("ng\n");
  }

  return 0;
}
