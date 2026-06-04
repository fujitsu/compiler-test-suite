#include <stdio.h>
void fcompat2(int m, int n, int a[n][6][m], int c[n][n][6][m])
{
  int (*p)[4][n+1];
  int (*r)[n][n][n+1];
  int i, j, k, l, err=0;

  r = c;   
           

  for ( i=0 ; i<n ; i++) {
    for ( j=0 ; j<6 ; j++) {
      for ( k=0 ; k<m ; k++) {
        a[i][j][k] = 10;
      }
    }
  }

  for ( i=0 ; i<n ; i++) {
    for ( j=0 ; j<n ; j++) {
      for ( k=0 ; k<6 ; k++) {
        for ( l=0 ; l<m ; l++) {
          c[i][j][k][l] = 20;
        }
      }
    }
  }

  if (err==0) {
    printf("3_4-1 end r[1][2][3][4] = %d (%d) \n",r[1][2][3][4], 20);
  } else {
    printf("3_4-1 ng  r[1][2][3][4] = %d (err=%d) \n",r[1][2][3][4], err);
  }
}

int fcompat()
{
  int m = 10;
  int n = 20;
  int a[n][6][m];
  int c[n][n][6][m];
  fcompat2(m, n, a, c);
  return 0;
}

void fvla(){}
