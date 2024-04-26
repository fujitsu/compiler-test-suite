#include <stdio.h>

struct X{
  int _Alignas(4) a;
};

int main(void){
  struct X tmp;

  tmp.a = 10;

  if(tmp.a == 10){
    printf("ok\n");
  } else {
    printf("ng\n");
  }

  return 0;
}
