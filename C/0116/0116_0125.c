#include <stdio.h>
#define loopnum_i 20
#define loopnum_j 20
#define loopnum_k 20
#define Master    22000

int test(int a[][loopnum_j][loopnum_k],
         int b[][loopnum_j][loopnum_k],
         int c[][loopnum_j][loopnum_k],
         int m1, int m2, int m3) {
  int i,j,k ;
  for (i=0; i<m1; i++) {
    for (j=0; j<m2; j++) {
      for (k=0; k<loopnum_k; k++) {
        a[j+1][i][k] = a[j][i][k] + b[i][j][k] + c[i][j][k] ;
      }
    }
  }

  return 0 ;

} 

int main() {
  int i,j,k,m1,m2,m3,result ;
  int a[loopnum_i][loopnum_j][loopnum_k] ;
  int b[loopnum_i][loopnum_j][loopnum_k] ;
  int c[loopnum_i][loopnum_j][loopnum_k] ;

  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      for (k=0; k<loopnum_k; k++) {
        a[i][j][k] = 0 ;
        b[i][j][k] = 1 ;
        c[i][j][k] = 1 ;
      }
    }
  }
  
  m1 = 10 ;
  m2 = 10 ;
  m3 = 10 ;
  
  test(a,b,c,m1,m2,m3) ;

  result = 0 ;
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      for (k=0; k<loopnum_k; k++) {
        result += a[i][j][k] ;
      }
    }
  }

  if (result == Master) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

  return 0 ;

}
