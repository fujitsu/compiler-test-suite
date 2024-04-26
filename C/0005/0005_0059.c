#include <stdio.h>
#include <complex.h>

int main(void){
  double _Complex x = __builtin_complex( (double)2, (double)2);

  if(__real__ x == 2 && __imag__ x == 2){
    printf("ok\n");
  } else {
    printf("ng\n");
  }

  return 0;
}
