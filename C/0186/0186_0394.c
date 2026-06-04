#include <stdio.h>
#include <math.h>


#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 1023
#endif

long long int a[N],b[N],c[N],res[N];

void sub(void) {
  int i,j;
  j = 0;

  for(i=0;i<N;++i) {
    if(c[i] < b[i]) {
      a[j] = c[i] + b[i];
      j = j + 1;
    }
  }
}

void test(void) {
  int i,j;
  j = 0;
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if(c[i] < b[i]) {
      res[j] = c[i] + b[i];
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
    b[i] = (i*3)%50-33;
    c[i] = (i*21)%7;
    res[i] = a[i];
  }
}
int main(void) {
  init();
  test();
  sub();
  check();
}
