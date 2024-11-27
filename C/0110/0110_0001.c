#include <stdio.h>
#include "omp.h"
#define BOOL int
#define TRUE 1
#define FALSE 0

int foo(int i, int j, int k)
{
  return i*2+j*3+k*5;
}

void ord_dep(int x1[][20][20], int x2[][20][20], int x3[][20][20])
{

  int const n=20;
  int i, j, k, foo();
  int a[n][n][n], b[n][n][n], c[n][n][n];

  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) a[k][j][i] = 9999;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) b[k][j][i] = 8888;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) c[k][j][i] = 7777;

  #pragma omp parallel for ordered(2) schedule(runtime) private(i)
  for (k=n-2-1; k>=0; k-=2) {
     for (j=4-1; j<n; j++) {
        for (i=1-1; i<n; i++) {
           a[k][j][i] = foo(i,j,k);
        }
        #pragma omp ordered depend(sink: k+2,j-3)
        for (i=1-1; i<n; i++) {
           b[k][j][i] = a[k][j][i] + b[k+2][j-3][i];
           c[k+1][j-1][i] = b[k][j][i];
        }
        #pragma omp ordered depend(source)
     }
  }

  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) x1[k][j][i]  =a[k][j][i];
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) x2[k][j][i]  =b[k][j][i];
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) x3[k][j][i]  =c[k][j][i];

}


void ord_dep_seq(int x1[][20][20], int x2[][20][20], int x3[][20][20])
{
  int const n=20;
  int i, j, k, foo();
  int a[n][n][n], b[n][n][n], c[n][n][n];

  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) a[k][j][i] = 9999;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) b[k][j][i] = 8888;
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) c[k][j][i] = 7777;

  for (k=n-2-1; k>=0; k-=2) {
     for (j=4-1; j<n; j++) {
        for (i=1-1; i<n; i++) {
           a[k][j][i] = foo(i,j,k);
        }
        for (i=1-1; i<n; i++) {
           b[k][j][i] = a[k][j][i] + b[k+2][j-3][i];
           c[k+1][j-1][i] = b[k][j][i];
        }
     }
  }

  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) x1[k][j][i] =a[k][j][i];
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) x2[k][j][i] =b[k][j][i];
  for (k=0; k<n; k++) for (j=0; j<n; j++) for (i=0; i<n; i++) x3[k][j][i] =c[k][j][i];

}


int main(int argc, char **argv)
{
  
  int const n=20;
  int x1[n][n][n], x2[n][n][n], x3[n][n][n];
  int y1[n][n][n], y2[n][n][n], y3[n][n][n];
  int i,j,k;
  int ng1, ng2, ng3;

  ord_dep(x1,x2,x3);
  ord_dep_seq(y1,y2,y3);

  ng1=0; ng2=0; ng3=0;
  for (k=0; k<n; k++) {
     for (j=0; j<n; j++) {
        for (i=0; i<n; i++) {
           if (x1[k][j][i]!=y1[k][j][i]) ng1=ng1+1;
           if (x2[k][j][i]!=y2[k][j][i]) ng2=ng2+1;
           if (x3[k][j][i]!=y3[k][j][i]) ng3=ng3+1;
        }
     }
  }

  fprintf(stdout, "ng=%d %d %d\n", ng1, ng2, ng3);

  return 0;
}

