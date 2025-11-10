#include <stdio.h>
extern int unroll_ifgoto(int a[], int is, int ie, int ans)
{
  int i, k = 0;
  i = is;
 LL:
  k = k + a[i];
  ++i;
  if (i < ie) goto LL;
  if (k == ans) printf("ok: %d\n", k);
  else          printf("ng: %d\n", k);
  return (k > ie) ? ie : k;
}

extern int unroll_ifgoto2(int a[], int ans)
{
  int i, k = 0;
  i = 0;
 LL:
  k = k + a[i];
  ++i;
  if (i < 20) goto LL;
  if (k == ans) printf("ok: %d\n", k);
  else          printf("ng: %d\n", k);
}
