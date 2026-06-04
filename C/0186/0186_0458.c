#include <stdio.h>
#include <math.h>


#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 1023
#endif

int a[N],b[N],res[N];
double c[N];

void sub(void) {
  int i;
  
  for(i=0;i<N;++i) {
    if(c[i] > b[i]) {
      a[i] = (double)c[i];
    }
  }
}

void test(void) {
  int i;
  
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if(c[i] > b[i]) {
      res[i] = (double)c[i];
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
    b[i] = (int)cos(i*1.3);
    c[i] = sin(i*1.5*0.3)*cos(i*2.2);
    res[i] = 0;
  }
}
int main(void) {
  init();
  test();
  sub();
  check();
}
