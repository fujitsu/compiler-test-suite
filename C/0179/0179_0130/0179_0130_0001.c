#include <stdio.h>
extern int unroll_for(int a[], int is, int ie, int ans)
{
  int i, k = 0;
  for (i = is; i < ie; ++i) {
    k = k + a[i];
  }
  if (k == ans) printf("ok: %d\n", k);
  else          printf("ng: %d\n", k);
  return (k > ie) ? ie : k;
}

extern void unroll_for2(int a[], int ans)
{
  int i, k = 0;
  for (i = 0; i < 20; ++i) {
    k = k + a[i];
  }
  if (k == ans) printf("ok: %d\n", k);
  else          printf("ng: %d\n", k);
}

