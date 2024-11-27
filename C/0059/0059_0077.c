
#include <stdio.h>
#define TYPE double 

TYPE fnc(TYPE g) {
  TYPE f[2]={1.1,g*1.01};
  return f[1];
}

TYPE vadd (TYPE   f, TYPE   g) {
  TYPE   data[2] = { f+g, fnc(g) };
  return data[0]+data[1];
}

int main() {
  TYPE   i,j,k;

  for (i=1.0e-20; i<1.0e+20; i*=1.01) {
    for (j=1.0e-10; j<1.0e+10; j*=1.01) {
      k=i+j+j*1.01;
      if (k!=vadd(i,j)) printf("err %10.16e \n",k-vadd(i,j));
    }
  }
  printf("Test end\n");
  return 0;
}

