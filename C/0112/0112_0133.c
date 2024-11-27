#include <stdio.h>
#include <math.h>

#define N 50
double dres[N];
double darg[N];
float fres[N];
float farg[N];

void test1(void)
{
  int i;
  for(i=0; i<N; i++) {
    dres[i] = sinh(darg[i]);
  }
}

void test2(void)
{
  int i;
  for(i=0; i<N; i++) {
    fres[i] = sinhf(farg[i]);
  }
}

void init(){
  int i;
  for(i=0; i<N; i++){
    fres[i] = 0;
    dres[i] = 0;
    farg[i] = 1.0+(float)i/100;
    darg[i] = 1.0+(float)i/100;
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
