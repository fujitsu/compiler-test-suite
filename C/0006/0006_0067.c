#include <stdio.h>
#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void test_1(unsigned int *a, unsigned int *b, unsigned int *c, unsigned int *d, int n) {
  long long int i;


  for (i=0; i<n-2; i++) {
    a++;
    b++;
    c++;
    d++;
    *a = *b + *c * *d;
  }
}

void test_2(unsigned int *a, unsigned int *b, unsigned int *c, unsigned int *d, int n) {
  int i;


  for (i=0; i<n-2; i++) {
    a++;
    b++;
    c++;
    d++;
    *a = *b + *c * *d;
  }
}

void test_3(unsigned int *a, unsigned int *b, unsigned int *c, unsigned int *d, int n) {
  unsigned int i;


  for (i=0; i<n-2; i++) {
    a++;
    b++;
    c++;
    d++;
    *a = *b + *c * *d;
  }
}

void test_4(unsigned int *a, unsigned int *b, unsigned int *c, unsigned int *d, int n) {
  unsigned long long int i;


  for (i=0; i<n-2; i++) {
    a++;
    b++;
    c++;
    d++;
    *a = *b + *c * *d;
  }
}

#if !defined(ASM_ONLY)

void init(unsigned int *a, unsigned int *b, unsigned int *c, unsigned int *d, unsigned int *res) {
  int i;


  for (i=0; i<N; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = i+1;
    d[i] = i+2;
    res[i] = 0;
  }

  for (i=1; i<N-1; i++) {
    res[i] = b[i] + c[i] * d[i];
  }
}


void check(unsigned int *a, unsigned int *b) {
  int i;
  for(i=0; i<N; i++) {
    if(a[i] != b[i]) {
      printf("i=%d\n", i);
      printf("a[i]=%d\n", a[i]);
      printf("res[i]=%d\n", b[i]);
      printf("NG\n");
    } 
  }
}

int main() {
  unsigned int a[N],b[N],c[N],d[N],res[N];
  
  init(a,b,c,d,res);
  printf("------ test1 -------\n");
  test_1(a,b,c,d,N);
  check(a,res);

  init(a,b,c,d,res);
  printf("------ test2 -------\n");
  test_2(a,b,c,d,N);
  check(a,res);

  init(a,b,c,d,res);
  printf("------ test3 -------\n");
  test_3(a,b,c,d,N);
  check(a,res);

  init(a,b,c,d,res);
  printf("------ test4 -------\n");
  test_4(a,b,c,d,N);
  check(a,res);

  printf("OK\n");
  return 0;
}

#endif

