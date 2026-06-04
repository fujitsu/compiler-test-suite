#include <stdio.h>
#include <math.h>


#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 1023
#endif

long long int a[N],res[N];
int b[N],c[N];

void sub(void) {
  int i;
  int tmp = 0;

  for(i=0;i<N;++i) {
    if(c[i] > b[i]) {
      tmp = c[i];
    } else {
      tmp = b[i];
    }
    a[i] = (long long int)tmp;
  }
}

void test(void) {
  int i;
  int tmp = 0;
  
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if(c[i] > b[i]) {
      tmp = c[i];
    } else {
      tmp = b[i];
    }
    res[i] = (long long int)tmp;
  }
}

void check(void) {
  int i;
  for(i=0;i<N;++i) {
    if(a[i] != res[i]) {
      printf("%d %lld %lld\n", i,res[i],a[i]);
    }
  }
  puts("OK");
}

void init(void) {
  int i;
  for(i=0;i<N;++i) {
    a[i] = 0;
    b[i] = (int)1000*cos(i*71.3);
    c[i] = (int)1000*sin(i*131.5)*cos(i*2.2);
    res[i] = 0;
  }
}
int main(void) {
  init();
  test();
  sub();
  check();
}
