#include <stdio.h>

struct Outer_struct {
  struct {
    struct {
      int a;
    };
  };
};


int main(void){
  struct Outer_struct x;

  x.a = 10;

  if( x.a == 10){
    printf("ok\n");
  } else{
    printf("ng\n");
  }

  return 0;
}
