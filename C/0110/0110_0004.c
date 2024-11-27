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

  int i, j, k, foo();

  #pragma omp parallel for ordered(3)
  for (k=2-1; k<n; k++) {
     for (j=n-2-1; j>=2-1; j-=2) {
        for (i=1-1; i<n; i++) {
           a[k][j][i] = foo(i,j,k);
           #pragma omp ordered depend(sink: k-1,j+2,i)
           b[k][j][i] = a[k][j][i] + b[k-1][j+2][i];
           #pragma omp ordered depend(source)
           c[k-1][j-1][i] = b[k][j][i];
        }
     }
  }

}


void ord_dep_seq(int n, int a[][n][n], int b[][n][n], int c[][n][n])
{

  int i, j, k, foo();

  for (k=2-1; k<n; k++) {
     for (j=n-2-1; j>=2-1; j-=2) {
        for (i=1-1; i<n; i++) {
           a[k][j][i] = foo(i,j,k);
           b[k][j][i] = a[k][j][i] + b[k-1][j+2][i];
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
  int i,j,k;
  int nga,ngb,ngc;

  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) a[k][j][i] = 9999;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) b[k][j][i] = 8888;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) c[k][j][i] = 7777;
  ord_dep(n,a,b,c);

  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) d[k][j][i] = 9999;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) e[k][j][i] = 8888;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) f[k][j][i] = 7777;
  ord_dep_seq(n,d,e,f);

  nga=0;
  ngb=0;
  ngc=0;
  for (k=1-1; k<n; k++) {
     for (j=1-1; j<n; j++) {
        for (i=1-1; i<n; i++) {
           if (a[k][j][i] != d[k][j][i]) nga=nga+1;
           if (b[k][j][i] != e[k][j][i]) ngb=ngb+1;
           if (c[k][j][i] != f[k][j][i]) ngc=ngc+1;
        }
     }
  }

  fprintf(stdout, "NG=%d %d %d\n",nga,ngb,ngc);

  return 0;
}

