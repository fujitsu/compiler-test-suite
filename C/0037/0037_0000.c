#include <stdio.h>


int main(void) {
  double b[10000],tmp[10000];
  double a=7;
  int i;

  for(i=0; i<10000; ++i) {
    tmp[i] = 2.0;
  }

  for(i=0; i<10000; ++i) {
    b[i] = a;

    if( i%2 == 0 ) {
      tmp[i] = tmp[i] +1;
    }
  }

  printf ("%lf ,%lf \n",b[1],tmp[1]);

  return 0;
}
