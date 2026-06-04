#include <stdio.h>
#include <math.h>


#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 1023
#endif

float a[N],b[N],c[N],res[N];

void sub(void) {
  long long int i;
  

  for(i=0;i<N;++i) {
    if(c[i] > b[i]) {
      a[i] = c[i];
      
    }
  }
}

void test(void) {
  long long int i;
  
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if(c[i] > b[i]) {
      res[i] = c[i];
      
    }
  }
}

void check(void) {
  long long int i;
  for(i=0;i<N;++i) {
    if(a[i] != res[i]) {
      printf("%lld %f %f\n", i,res[i],a[i]);
    }
  }
  puts("OK");
}

void init(void) {
  long long int i;
  for(i=0;i<N;++i) {
    a[i] = 0;
    b[i] = 1-cos(i*2.3);
    c[i] = -sin(i*3.5)*cos(i*2.2);
    res[i] = 0;
  }
}
int main(void) {
  init();
  test();
  sub();
  check();
}
