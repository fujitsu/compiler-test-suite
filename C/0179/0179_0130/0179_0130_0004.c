#include <stdio.h>
extern int unroll_while(int a[], int is, int ie, int ans)
{
  int i, k = 0;
  i = is;
  while (i < ie) {
    k = k + a[i];
    ++i;
  }
  if (k == ans) printf("ok: %d\n", k);
  else          printf("ng: %d\n", k);
  return (k > ie) ? ie : k;
}

extern void unroll_while2(int a[], int ans)
{
  int i, k = 0;
  i = 0;
  while (i < 20) {
    k = k + a[i];
    ++i;
  }
  if (k == ans) printf("ok: %d\n", k);
  else          printf("ng: %d\n", k);
}
