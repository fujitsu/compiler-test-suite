#include <stdio.h>
#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#define CONST_DISTANCE 25

float a[N],b[N],c[N],d[N];
float a2[N],b2[N],c2[N],d2[N];
float a3[N],b3[N],c3[N],d3[N];
float res[N],res2[N],res3[N];


void test(int);

#if !defined(ASM_ONLY)

void init() {
  int i;

  for (i=0; i<N; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = 1;
    d[i] = i*2;
    res[i] = 0;
    a2[i] = 0;
    b2[i] = i;
    c2[i] = 1;
    d2[i] = i*2;
    res2[i] = 0;
    a3[i] = 0;
    b3[i] = i;
    c3[i] = 1;
    d3[i] = i*2;
    res3[i] = 0;
  }
  for (i=0; i<N; i=i+CONST_DISTANCE) {
    res[i] = b[i] + c[i] + d[i] ;
    res2[i] = b2[i] + c2[i] + d2[i] ;
    res3[i] = b3[i] + c3[i] + d3[i] ;
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
    a[i] = b[i] + c[i] + d[i] ;
    a2[i] = b2[i] + c2[i] + d2[i] ;
    a3[i] = b3[i] + c3[i] + d3[i] ;
  }
}
