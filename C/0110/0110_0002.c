#include <stdio.h>
#include "omp.h"
#define BOOL int
#define TRUE 1
#define FALSE 0

int foo(int i, int j, int k)
{
  return i*2+j*3+k*5;
}

void ord_dep(int n, int a[][n][n], int b[][n][n], int c[][n][n])
{

  int i, j, k, foo(), lb,ub,st;

  st = 1;
  lb = 4;
  ub = n;
  #pragma omp for ordered(2) private(i)
  for (k=2-1; k<n; k++) {
     for (j=lb-1; j<ub; j+=(ub)) {
        #pragma omp ordered depend(sink: k-1,j-3)
        for (i=1-1; i<n; i++) {
           a[k][j][i] = foo(i,j,k);
        }
        for (i=1-1; i<n; i++) {
           b[k][j][i] = a[k][j][i] + b[k-1][j-3][i];
        }
        #pragma omp ordered depend(source)
        for (i=1-1; i<n; i++) {
           c[k-1][j-1][i] = b[k][j][i];
        }
     }
  }

}


void ord_dep_seq(int n, int a[][n][n], int b[][n][n], int c[][n][n])
{

  int i, j, k, foo(), lb,ub,st;

  st = 1;
  lb = 4;
  ub = n;
  for (k=2-1; k<n; k++) {
     for (j=lb-1; j<ub; j+=(ub)) {
        for (i=1-1; i<n; i++) {
           a[k][j][i] = foo(i,j,k);
        }
        for (i=1-1; i<n; i++) {
           b[k][j][i] = a[k][j][i] + b[k-1][j-3][i];
        }
        for (i=1-1; i<n; i++) {
           c[k-1][j-1][i] = b[k][j][i];
        }
     }
  }

}




int main(int argc, char **argv)
{
  
  int const n=20;
  int a[n][n][n], b[n][n][n], c[n][n][n];
  int d[n][n][n], e[n][n][n], f[n][n][n];
  int ng, i,j,k;

  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) a[k][j][i] = 9999;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) b[k][j][i] = 8888;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) c[k][j][i] = 7777;
  #pragma omp parallel
  {
    ord_dep(n,a,b,c);
  }

  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) d[k][j][i] = 9999;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) e[k][j][i] = 8888;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) f[k][j][i] = 7777;
  ord_dep_seq(n,d,e,f);

  ng = 0;
  for (k=2-1; k<n; k++) {
     for (j=4-1; j<n; j++) {
        for (i=1-1; i<n; i++) {
           if (a[k][j][i] != d[k][j][i]) ng = ng+1;
           if (b[k][j][i] != e[k][j][i]) ng = ng+1;
           if (c[k-1][j-1][i] != f[k-1][j-1][i]) ng = ng+1;
        }
     }
  }

  fprintf(stdout, "  NG = %d\n", ng);

  return 0;
}

