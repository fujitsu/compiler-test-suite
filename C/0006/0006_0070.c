#include <stdio.h>
#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif


void test_1(double *a, double *b, double *c, int n, int x) {
  long long int i;
  for (i=x; i<n; i++) {
    a[i] = b[i] + c[i];
  }
}

void test_2(double *a, double *b, double *c, int n, int x) {
  int i;
  for (i=x; i<n; i++) {
    a[i] = b[i] + c[i];
  }
}

void test_3(double *a, double *b, double *c, int n, int x) {
  unsigned int i;
  for (i=x; i<n; i++) {
    a[i] = b[i] + c[i];
  }
}

void test_4(double *a, double *b, double *c, int n, int x) {
  unsigned long long int i;
  for (i=x; i<n; i++) {
    a[i] = b[i] + c[i];
  }
}

#if !defined(ASM_ONLY)

void init(double *a, double *b, double *c, double *res) {
  int i;

  for (i=0; i<N; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = 2 * i;
    res[i] = b[i] + c[i];
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
  double a[N],b[N],c[N],res[N];
  
  init(a,b,c,res);
  printf("------ test1 -------\n");
  test_1(a,b,c,N,0);
  check(a,res);

  init(a,b,c,res);
  printf("------ test2 -------\n");
  test_2(a,b,c,N,0);
  check(a,res);

  init(a,b,c,res);
  printf("------ test3 -------\n");
  test_3(a,b,c,N,0);
  check(a,res);

  init(a,b,c,res);
  printf("------ test4 -------\n");
  test_4(a,b,c,N,0);
  check(a,res);

  printf("OK\n");
  return 0;
}

#endif

