#include <stdio.h>


int lto_sub_1(void) {
  double b[10000],tmp[10000];
  int i;

  for(i=0; i<10000; ++i) {
    tmp[i] = 2.0;
  }

  for(i=0; i<10000; ++i) {

    if( i%2 == 0 ) {
      tmp[i] = i;
    }

    b[i] = tmp[i];
  }

  printf ("%lf ,%lf \n",b[1],tmp[1]);

  return 0;
}
