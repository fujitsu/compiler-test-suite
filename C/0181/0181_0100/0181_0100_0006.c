#include <stdio.h>

#define N 10

#if defined(__aarch64__)
#define EAX "x1"
#else 
#define EAX "eax"
#endif

static void init(const int n, int a[n], int b[n]) {
  int i;
  for(i=0; i<n; i++) {
    a[i] = i;
    b[i] = i+1;
  }
  return;
}

static int test_call_return(const int x) {
  register int s __asm__(EAX);
  s = x;
  return s;
}

static void test_load_store(const int n, int a[n], const int b[n]) {
  int i;
  register int t __asm__(EAX);
  for(i=0; i<n; i++) {
    t = b[i];
    t = test_call_return(t);
    a[i] = t;
  }
  return;
}

static void out(const int n, const int a[n], const int b[n]) {
  int i;
  for(i=0; i<n; i++) {
    printf("a[%d] = %d, b[%d] = %d\n", i, a[i], i, b[i]);
  }
  return;
}

 int 
lto_sub_10 (void) {
  int a[N], b[N];
  
  init(N, a, b);
  test_load_store(N, a, b);
  out(N, a, b);
  return 0;
}
