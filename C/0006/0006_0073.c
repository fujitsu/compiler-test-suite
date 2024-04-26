#include <stdio.h>
#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif


void test_1(double *a, double *b, double *c, double *d, int n, int x, int y) {
  long long int i;
  long long int j=-3;
  for (i=x-y; i<n+1; i=i+3) {
    j=j+3;
    a[j] = b[j] + c[j] * d[i];
  }
}

void test_2(double *a, double *b, double *c, double *d, int n, int x, int y) {
  int i;
  int j=-3;
  for (i=x-y; i<n+1; i=i+3) {
    j=j+3;
    a[j] = b[j] + c[j] * d[i];
  }
}

void test_3(double *a, double *b, double *c, double *d, int n, int x, int y) {
  unsigned int i;
  unsigned int j=0;
  for (i=x-y; i<n+1; i=i+3) {
    j=j+3;
    a[j-3] = b[j-3] + c[j-3] * d[j-3];
  }
}

void test_4(double *a, double *b, double *c, double *d, int n, int x, int y) {
  unsigned long long int i;
  unsigned long long int j=0;
  for (i=x-y; i<n+1; i=i+3) {
    j=j+3;
    a[j-3] = b[j-3] + c[j-3] * d[j-3];
  }
}

#if !defined(ASM_ONLY)
void init(double *a, double *b, double *c, double *d, double *res) {
  int i;

  for (i=0; i<N; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = 2 * i;
    d[i] = i-1;
    res[i] = 0;
  }

  for (i=0; i<N; i=i+3) {
    res[i] = b[i] + c[i] * d[i];
  }
}


void check(double *a, double *b) {
  int i;
  for(i=0; i<N; i++) {
    if(a[i] != b[i]) {
      printf("NG\n");
    } 
  }
}

int main() {
  double a[N],b[N],c[N],d[N],res[N];
  
  init(a,b,c,d,res);
  printf("------ test1 -------\n");
  test_1(a,b,c,d,N-1,-3,-3);
  check(a,res);

  init(a,b,c,d,res);
  printf("------ test2 -------\n");
  test_2(a,b,c,d,N-1,-4,-4);
  check(a,res);

  init(a,b,c,d,res);
  printf("------ test3 -------\n");
  test_3(a,b,c,d,N-1,1,1);
  check(a,res);

  init(a,b,c,d,res);
  printf("------ test4 -------\n");
  test_4(a,b,c,d,N-1,1,1);
  check(a,res);

  printf("OK\n");
  return 0;
}

#endif
