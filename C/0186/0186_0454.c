#include <stdio.h>
#include <math.h>


#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#else
#define N 1023
#endif

int a[N],b[N],c[N],res[N];

void sub(void) {
  int i;
  

  for(i=0;i<N;++i) {
    if(c[i] < b[i]) {
      a[i] = c[i];
      
    }
  }
}

void test(void) {
  int i;
  
#pragma clang loop vectorize(disable)
  for(i=0;i<N;++i) {
    if(c[i] < b[i]) {
      res[i] = c[i];
      
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
    b[i] = 5*i%27-11;
    c[i] = 2*i%29+5;
    res[i] = a[i];
  }
}
int main(void) {
  init();
  test();
  sub();
  check();
}
