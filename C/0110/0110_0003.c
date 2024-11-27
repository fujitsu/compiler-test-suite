#include <stdio.h>
#include "omp.h"
#define BOOL int
#define TRUE 1
#define FALSE 0

void ord_dep(int n, int *a, int *b, int *c)
{

  int k, foo;

  #pragma omp parallel for ordered(1) schedule(static)
  for (k=2-1; k<n; k++) {
    a[k] = k * 10;
    #pragma omp ordered depend(sink: k-1)
    b[k] = a[k] + b[k-1];
    #pragma omp ordered depend(source)
  }
}


void ord_dep_seq(int n, int *a, int *b, int *c)
{

  int k, foo;

  #pragma omp parallel for ordered(1) schedule(static)
  for (k=2-1; k<n; k++) {
    a[k] = k * 10;
    #pragma omp ordered depend(sink: k-1)
    b[k] = a[k] + b[k-1];
    #pragma omp ordered depend(source)
  }
}


int main(int argc, char **argv)
{
  
  int const n=20;
  int a[n], b[n], c[n];
  int d[n], e[n], f[n];
  int ng,k;

  for (k=0; k<n; k++)  a[k]=9999;
  for (k=0; k<n; k++)  b[k]=8888;
  for (k=0; k<n; k++)  c[k]=7777;
  ord_dep(n,a,b,c);

  for (k=0; k<n; k++)  d[k]=9999;
  for (k=0; k<n; k++)  e[k]=8888;
  for (k=0; k<n; k++)  f[k]=7777;
  ord_dep_seq(n,d,e,f);


  ng = 0;
  for (k=0; k<n; k++) {
    if (a[k] != d[k]) ng = ng+1;
    if (b[k] != e[k]) ng = ng+1;
    if (c[k] != f[k]) ng = ng+1;
  }

  fprintf(stdout, "  NG = %d\n", ng);

  return 0;
}

