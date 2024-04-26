#include <stdio.h>
#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif


void test_1(double *a, double *b, double *c, int n) {
  int i;
  for (i=0; i<N; i++) {
    a[1] = b[i] + c[i];
  }
}

void test_2(double *a, double *b, double *c, double *a2, int n) {
  int i;
  for (i=0; i<N; i++) {
    a[i] = b[i] + (double)i;
    a2[i] = c[i] + (double)i;
  }
}

void test_3(double *a, double *b, double *c, double *d, double *e, int n) {
  int i;
  for (i=0; i<N; i++) {
    a[i] = b[i] + c[i] + d[i] + e[i];
  }
}

void test_4(double *a, double *b, double *c, int n, int mm) {
  int i;
  for (i=0; i<N; i=i+mm) {
    a[i] = b[i] + c[i];
  }
}


#if !defined(ASM_ONLY)

int main() {
  int i;
  double a[N],b[N],c[N],d[N],e[N],res[N],res1[N],res2[N];
  
  for (i=0; i<N; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = 2 * i;
    res[i] = b[i] + c[i];
  }
  printf("------ test1 -------\n");

  test_1(a,b,c,N);

  for(i=0; i<N; i++) {
    if (i==1) {
      if(a[i] != res[N-1]) {
	printf("NG\n");
      } 
    } else {
      if(a[i] != 0) {
	printf("NG\n");
      }
    }
  }
  
  for (i=0; i<N; i++) {
    a[i] = 0;
    d[i] = 0;
    b[i] = i;
    c[i] = 2 * i;
    res1[i] = b[i] + i;
    res2[i] = c[i] + i;
  }
  printf("------ test2 -------\n");
  test_2(a,b,c,d,N);
  for(i=0; i<N; i++) {
    if(a[i] != res1[i]) {
      printf("NG\n");
    }
    if(d[i] != res2[i]) {
      printf("NG\n");
    }
  }

  for (i=0; i<N; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = i;
    d[i] = i;
    e[i] = i;
    res[i] = b[i] + c[i] + d[i] + e[i];
  }
  printf("------ test3 -------\n");
  test_3(a,b,c,d,e,N);
  for(i=0; i<N; i++) {
    if(a[i] != res[i]) {
      printf("NG\n");
    }
  }

  for (i=0; i<N; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = i;
    res[i] = b[i] + c[i];;
  }
  printf("------ test4 -------\n");
  test_4(a,b,c,N,1);
  for(i=0; i<N; i++) {
    if(a[i] != res[i]) {
      printf("NG\n");
    }
  }
  
  printf("OK\n");
  return 0;
}

#endif

