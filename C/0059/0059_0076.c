
#include <stdio.h>
#define TYPE long double
TYPE    vadd (TYPE   f, TYPE   g) {
  TYPE   data[2] = { f, g };
  return data[0]+data[1];
}

int main() {
  TYPE   i,j;

  for (i=1.0e-20; i<1.0e+20; i*=1.01) {
    for (j=1.0e-20; j<1.0e+20; j*=1.01) {
      if (i+j!=vadd(i,j)) printf("err %f %f\n",i+j,vadd(i,j));
    }
  }
  return 0;
}

