#include <stdio.h>


int main() {
  double b[10000],tmp[10000];
  int i,j,n,n2;
  n = 10000;
  n2=10000;

  for(i=0; i<n; ++i) {
    tmp[i]=0;
  }

  for(i=0; i<n; ++i) 
  {
    b[i] = tmp[i];
    for(j=0; j<n2; ++j) {
      tmp[i] = tmp[i] +1;
    }
  }

  printf("%lf, %lf, %lf",b[1],tmp[1],tmp[2]);
}
