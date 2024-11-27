#include <stdio.h>
#define loopnum_i 100
#define loopnum_j 100
#define Master    1100

int test(int a[][loopnum_j],
         int b[][loopnum_j],
         int c[][loopnum_j],
         int m1, int m2) {

  int i,j ;
  for (i=0; i<m1; i++) {
    for (j=0; j<m2; j++) {
      a[j][i+1] = a[j][i] + b[j][i] + c[j][i] ;
    }
  }

  return 0 ;

} 

int main() {
  int i,j,m1,m2,result ;
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
  
  m1 = 10 ;
  m2 = 10 ;
  
  test(a,b,c,m1,m2) ;

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
