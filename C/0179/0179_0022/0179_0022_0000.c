#include <stdio.h>

extern int pragma_unroll(float a[], int N, int ans);
extern int pragma_unroll2(float a[], int N, int ans);
extern int pragma_unroll3(float a[], int N, int ans);
static void init_a(float a[]);

#define N 1000
#define ANS 200

int main()
{
  int i, k1, k2, k3;
  float a[N];

  for (i=0; i<N; ++i) {
    a[i] = 0.0f;
  }
  init_a(a);
  k1 = pragma_unroll(a,N,ANS);
  k2 = pragma_unroll2(a,N,ANS);
  k3 = pragma_unroll3(a,N,ANS);
  if (k1 == k2 && k2 == k3) printf("ok: %d %d %d\n", k1, k2, k3);
  else                      printf("ng: %d %d %d\n", k1, k2, k3);
}

static void init_a(float a[])
{
  int i;
  for (i=0; i<N; ++i){
    a[i] = (float)i;
  }
}

