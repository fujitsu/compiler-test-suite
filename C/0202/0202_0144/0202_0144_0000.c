#include <stdio.h>
extern int n;
extern int m;

void fcompat(void)
{
  int a[n][6][m];
  int (*p)[4][n+1];
  int c[n][n][6][m];
  int (*r)[n][n][n+1];
  int i,j,k,l,err=0;
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

  for ( i=0 ; i<n ; i++) {
    for ( j=0 ; j<n ; j++) {
      for ( k=0 ; k<6 ; k++) {
        for ( l=0 ; l<m ; l++) {
          if (r[i][j][k][l] != 20) {
            err ++;
	  }
        }
      }
    }
  }

  if (err==0) {
    printf("3_3-1    r[1][2][3][4] = %d (%d) \n",r[1][2][3][4], 20);
  } else {
    printf("3_3-1 ng r[1][2][3][4] = %d (err=%d) \n",r[1][2][3][4], err);
  }
}

void fvla(){}

