
#include <stdio.h>
#define loopnum_i 10
#define loopnum_j 10
#define Master    200

int test(int a[][loopnum_j], 
         int b[][loopnum_j], 
         int c[][loopnum_j]) {

  int i,j ;
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      a[i][j] = b[i][j] + c[i][j] ;
    }
  }

  return 0 ;

} 

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

  
  test(a,b,c) ;

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
