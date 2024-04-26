#include <stdio.h>
#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#define CONST_DISTANCE 3

double a[N];
double b[N];
double res[N];

void test(int);

#if !defined(ASM_ONLY)

void init() {
  int i;

  for (i=0; i<N; i++) {
    a[i] = 0;
    b[i] = i;
    res[i] = 0;
  }
  for (i=0; i<N; i=i+CONST_DISTANCE) {
    res[i] = b[i];
  }
}


int main() {
  int i;

  init();
  for(i=0; i<2; i++) {
    test(N);
  }

  for(i=0; i<N; i++) {
    if(a[i] != res[i]) {
      printf("NG\n");
    } 
  }
  printf("OK\n");
  return 0;
}

#endif

void test(int n) {
  int i;
  for (i=0; i<n; i=i+CONST_DISTANCE) {
    a[i] = b[i];
  }
}
