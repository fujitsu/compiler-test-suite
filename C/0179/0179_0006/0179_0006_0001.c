#include "000.h"

void deadcode_var(int *i, double *d)
{
  int k;
  k = *i + (int)*d;
}

void deadcode_array(int a[], int N)
{
  int i, k;
  k = 0;
  for (i = 0; i < N; ++i) {
    k = k + a[i];
  }
}

void deadcode_struct(pair *x)
{
  int k;
  k = x->upper + x->lower;
}

void deadcode_union(each *u)
{
  int k;
  k = u->p1 + u->p2 + u->p3;
}
