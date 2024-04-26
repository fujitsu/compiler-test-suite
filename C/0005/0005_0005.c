#include <stdio.h>

int main(void){
  int const x = 0;
  int a = _Generic(x, int: 10, int const: 100, int volatile: 1000, int const volatile: 10000);

  int volatile y = 0;
  int b = _Generic(y, int: 10, int const: 100, int volatile: 1000, int const volatile: 10000);

  int volatile const z = 0;
  int c = _Generic(z, int: 10, int const: 100, int volatile: 1000, int const volatile: 10000);

#if defined (__GNUC__)
  if(a == 10 && b == 10 && c == 10){
#else
  if(a == 100 && b == 1000 && c == 10000){
#endif
    printf("ok\n");
  } else{
    printf("ng\n");
  }

  return 0;
}
