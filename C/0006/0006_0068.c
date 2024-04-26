#include <stdio.h>
#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void test_1(short int *a, short int *b, short int *c, short int *d,
	    long long int n, long long int x, long long int y, long long int z,
	    int k) {
  long long int i;


  for (i=x-y; i<n-z; i++) {
    a[i] = b[i] + *c * d[k];
    c++;
  }
}

void test_2(short int *a, short int *b, short int *c, short int *d,
	    int n, int x, int y, int z,
	    int k) {
  int i;


  for (i=x-y; i<n-z; i++) {
    a[i] = b[i] + *c * d[k];
    c++;
  }
}

void test_3(short int *a, short int *b, short int *c, short int *d,
	    unsigned int n, unsigned int x, unsigned int y, unsigned int z,
	    int k) {
  unsigned int i;


  for (i=x-y; i<n-z; i++) {
    a[i] = b[i] + *c * d[k];
    c++;
  }
}

void test_4(short int *a, short int *b, short int *c, short int *d,
	    unsigned long long int n, unsigned long long int x,
	    unsigned long long int y, unsigned long long int z,
	    int k) {
  unsigned long long int i;


  for (i=x-y; i<n-z; i++) {
    a[i] = b[i] + *c * d[k];
    c++;
  }
}

#if !defined(ASM_ONLY)

void init(short int *a, short int *b, short int *c, short int *d, short int *res) {
  int i,k;


  for (i=0; i<N; i++) {
    a[i] = 0;
    b[i] = i;
    c[i] = 2 * i;
    d[i] = i-1;
  }
  k = 3;

  for (i=0; i<N; i++) {
    res[i] = b[i] + c[i] * d[k];
  }
}

void check(short int *a, short int *b) {
  int i;
  for(i=0; i<N; i++) {
    if(a[i] != b[i]) {
      printf("i=%d\n", i);
      printf("a=%d\n", a[i]);
      printf("res=%d\n", b[i]);
      printf("NG\n");
    } 
  }
}

int main() {
  short int a[N],b[N],c[N],d[N],res[N];
  
  init(a,b,c,d,res);
  printf("------ test1 -------\n");
  test_1(a,b,c,d,N,3,3,0,3);
  check(a,res);

  init(a,b,c,d,res);
  printf("------ test2 -------\n");
  test_2(a,b,c,d,N,3,3,0,3);
  check(a,res);

  init(a,b,c,d,res);
  printf("------ test3 -------\n");
  test_3(a,b,c,d,N,3,3,0,3);
  check(a,res);

  init(a,b,c,d,res);
  printf("------ test4 -------\n");
  test_4(a,b,c,d,N,3,3,0,3);
  check(a,res);

  printf("OK\n");
  return 0;
}

#endif

