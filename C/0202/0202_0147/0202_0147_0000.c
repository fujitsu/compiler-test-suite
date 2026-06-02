#include <stdio.h>
extern int n;

int B[100];                    
void fvla(int m, int C[m][m]); 

void fvla(int m, int C[m][m])  
{
  typedef int VLA[m][m];       
  int D[m];                    
  int (*s)[m];                 
  static int (*q)[m] = &B;     
  int i, j, err=0;

  for ( i=0 ; i<100 ; i++ ) {
    B[i] = 10;
  }
  for ( i=0 ; i<m ; i++ ) {
    for ( j=0 ; j<m ; j++ ) {
      C[i][j] = 20;
    }
  }
  for ( i=0 ; i<m ; i++ ) {
    D[i] = 30;
  }

  for ( i=0 ; i<100 ; i++ ) {
    if (q[0][i] != 10) err++; 
  }
  for ( i=0 ; i<m ; i++ ) {
    for ( j=0 ; j<m ; j++ ) {
      if (C[i][j] != 20) err++;
    }
    if (D[i] != 30) err++;
  }

  if (err == 0) {
    printf("4-4    error = %d \n",err);
  } else {
    printf("4-4 NG error = %d \n",err);
  }
}

void fcompat(){}
