#include <stdio.h>
#include <math.h>

#define N 50
double dres[N];
double darg1[N];
double darg2[N];
float fres[N];
float farg1[N];
float farg2[N];

void test1(void)
{
  int i;
  for(i=0; i<N; i++) {
    dres[i] = fmod(darg1[i],darg2[i]);
  }
}

void test2(void)
{
  int i;
  for(i=0; i<N; i++) {
    fres[i] = fmodf(farg1[i],farg2[i]);
  }
}

void init(){
  int i;
  for(i=0; i<N; i++){
    fres[i] = 0;
    dres[i] = 0;
    farg1[i] = i+10;
    farg2[i] = i+20;
    darg1[i] = i+30;
    darg2[i] = i+40;
  }
}

int main(){
  int i;

  init();
  test1();
  for(i=0; i<N; i++) printf("%f ",dres[i]); printf("\n");

  init();
  test2();
  for(i=0; i<N; i++) printf("%f ",fres[i]); printf("\n");

  return 0;
}

