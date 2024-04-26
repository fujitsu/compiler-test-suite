#include <stdio.h>

void ok(void){
  printf("ok\n");
}

void ng(void){
  printf("ng\n");
}


int main(void){

  double pi;
  _Generic(pi, int: ng(), double: ok() );

  return 0;
}
