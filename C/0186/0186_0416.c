#include <stdio.h>
#include <math.h>


#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 1023
#endif

long long int a[N],b[N],res[N];
int c[N];

void sub(void) {
  int i,j;
  j = 0;
  for(i=0;i<N;++i) {
    if(c[i] > b[i]) {
      a[i] = c[j];
      j = j + 1;
    }
  }
}

void test(void) {
  int i,j;
  j = 0;
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if(c[i] > b[i]) {
      res[i] = c[j];
      j = j + 1;
    }
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
    b[i] = (long long int)(100*cos(i*1.3));
    c[i] = (int)(100*sin(i*1.5)*cos(i*2.2));
    res[i] = 0;
  }
}
int main(void) {
  init();
  test();
  sub();
  check();
}
