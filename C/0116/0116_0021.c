
#include <stdio.h>
#define loopnum_i 100
#define loopnum_j 100
#define Master    20000

int main() {
  int i,j,result ;
  int a[loopnum_i][loopnum_j] ;
  int b[loopnum_i][loopnum_j] ;
  int c[loopnum_i][loopnum_j] ;

  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      a[i][j] = 0 ;
      b[i][j] = 1 ;
      c[i][j] = 1 ;
    }
  }


  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      a[j][i] = a[j][i] + b[j][i] + c[j][i] ;
    }
  }


  result = 0 ;
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      result += a[i][j] ;
    }
  }

  if (result == Master) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

  return 0 ;

}
