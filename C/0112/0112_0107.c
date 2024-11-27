#include <stdio.h>
#include <math.h>
#include <complex.h>

#define N 20
double _Complex a[N];
double _Complex b[N];
double _Complex c[N];
float _Complex d[N];
float _Complex e[N];
float _Complex f[N];

void test1(void)
{
  int i;
  for(i=0; i<N; i++) {
    a[i] = b[i] * c[i];
  }
}

void test2(void)
{
  int i;
  for(i=0; i<N; i++) {
    d[i] = e[i] * f[i];
  }
}

void test3(void)
{
  int i;
  for(i=0; i<N; i++) {
    a[i] = b[i] / c[i];
  }
}

void test4(void)
{
  int i;
  for(i=0; i<N; i++) {
    d[i] = e[i] / f[i];
  }
}

void init(){
  int i;
  for(i=0; i<N; i++){
    a[i] = 0;
    b[i] = i + (i+10)*I;
    c[i] = i+1 + (i+11)*I;
    d[i] = 0;
    e[i] = i+2 + (i+20)*I;
    f[i] = i+3 + (i+21)*I;
  }
}

int main(){
  int i;

  init();
  test1();
  for(i=0; i<N; i++) printf("(%f,%f) ",creal(a[i]),cimag(a[i])); printf("\n");

  init();
  test2();
  for(i=0; i<N; i++) printf("(%f,%f) ",creal(d[i]),cimag(d[i])); printf("\n");

  init();
  test3();
  for(i=0; i<N; i++) printf("(%f,%f) ",creal(a[i]),cimag(a[i])); printf("\n");

  init();
  test4();
  for(i=0; i<N; i++) printf("(%f,%f) ",creal(d[i]),cimag(d[i])); printf("\n");

  return 0;
}
