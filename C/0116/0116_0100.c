#include <stdio.h>
#define loopnum_i 5
#define loopnum_j 5
#define loopnum_k 5
#define Master    250

int test(int a[][loopnum_j][loopnum_k], 
         int b[][loopnum_j][loopnum_k], 
         int c[][loopnum_j][loopnum_k]) {

  int i,j,k ;
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      for (k=0; k<loopnum_k; k++) {
        a[i][j][k] = b[i][j][k] + c[i][j][k] ;
      }
    }
  }

  return 0 ;

} 

int main() {
  int i,j,k,result ;
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

  
  test(a,b,c) ;

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
