#include <stdio.h>

int main() {
  double _Complex a, b, c;
  a = 2.0 + 3.0i;
  b = 4.0 + 5.0i;
  c = a + b;
  if ( __real__ c == 6.0 && __imag__ c == 8.0 ) {
    printf("OK\n");
  }
  else {
    printf("NG real=%lf, imag=%lf\n", __real__ c, __imag__ c);
  }
  return 0;
}
