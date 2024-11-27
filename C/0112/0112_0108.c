#include <stdio.h>
#include <math.h>
#include <complex.h>

#define N 20
double _Complex dres[N];
double _Complex darg[N];
float _Complex fres[N];
float _Complex farg[N];

void test1(void)
{
  int i;
  for(i=0; i<N; i++) {
    dres[i] = catan(darg[i]);
  }
}

void test2(void)
{
  int i;
  for(i=0; i<N; i++) {
    fres[i] = catanf(farg[i]);
  }
}

void init(){
  int i;
  for(i=0; i<N; i++){
    fres[i] = 0;
    dres[i] = 0;
    farg[i] = i + (i+10)*I;
    darg[i] = i + (i+20)*I;
  }
}

int main(){
  int i;

  init();
  test1();
  for(i=0; i<N; i++) printf("(%f,%f) ",creal(dres[i]),cimag(dres[i])); printf("\n");

  init();
  test2();
  for(i=0; i<N; i++) printf("(%f,%f) ",creal(fres[i]),cimag(fres[i])); printf("\n");

  return 0;
}
