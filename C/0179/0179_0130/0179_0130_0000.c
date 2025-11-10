#include <stdio.h>
extern int unroll_dowhile(int a[], int is, int ie, int ans)
{
  int i, k = 0;
  i = is;
  do {
    k = k + a[i];
    ++i;
  } while (i<ie);
  if (k == ans) printf("ok: %d\n", k);
  else          printf("ng: %d\n", k);
  return (k > ie) ? ie : k;
}

extern void unroll_dowhile2(int a[], int ans)
{
  int i, k = 0;
  i = 0;
  do {
    k = k + a[i];
    ++i;
  } while (i<20);
  if (k == ans) printf("ok: %d\n", k);
  else          printf("ng: %d\n", k);
}
