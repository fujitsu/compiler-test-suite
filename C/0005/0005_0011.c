#include <stdio.h>

union Outer_union {
  struct {
    union {
      int a;
    };
  };
};


int main(void){
  union Outer_union x;

  x.a = 10;

  if( x.a == 10){
    printf("ok\n");
  } else{
    printf("ng\n");
  }

  return 0;
}
