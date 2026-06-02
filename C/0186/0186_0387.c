#include <stdio.h>
#include <math.h>


#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 1023
#endif

short a[N],b[N],c[N],res[N];

void sub(void) {
  int i,j;
  j = 0;

  for(i=0;i<N;++i) {
    if(c[i] > b[i]) {
      a[j] = c[i];
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
      res[j] = c[i];
      j = j + 1;
    }
  }
}

void check(void) {
  int i;
  for(i=0;i<N;++i) {
    if(a[i] != res[i]) {
      printf("%d %d %d\n", i,res[i],a[i]);
    }
  }
  puts("OK");
}

void init(void) {
  int i;
  for(i=0;i<N;++i) {
    a[i] = 0;
    b[i] = 2*i%5+3;
    c[i] = 3*i%9+5;
    res[i] = a[i];
  }
}
int main(void) {
  init();
  test();
  sub();
  check();
}
