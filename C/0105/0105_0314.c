#include <stdio.h>

#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void test(int * restrict m, double * restrict a, double * restrict b, int k) {
  int i;
  for (i = 0; i < N; ++i){
    if(m[i] < N) {      
      a[i] = b[k];  
    }
  }
}

void init(int * m, double * a, double * b) {
  int i;
  for (i = 0; i < N; i++) {
    a[i] = 0.0;
    b[i] = (double)i;
    m[i] = N;
 }
}

int main(void){
  int k;
  double a[N], b[N];
  int m[N];
  k = 10000;

  init(m,a,b);
  test(m,a,b,k);

  PRINT_OK;
  return 0;
}
