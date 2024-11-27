#include <stdio.h>
#define loopnum_i 1000
#define Master    1998.0

int test(double *a, double *b, double *c) {

  int i ;
  for (i=1; i<loopnum_i; i++) {
    a[i] = b[i] + c[i] ;
  }

  return 0 ;

} 

int main() {
  int i,result ;
  double a[loopnum_i] ;
  double b[loopnum_i] ;
  double c[loopnum_i] ;

  for (i=0; i<loopnum_i; i++) {
    a[i] = 0.0 ;
    b[i] = 1.0 ;
    c[i] = 1.0 ;
  }

  
  test(a,b,c) ;

  result = 0 ;
  for (i=0; i<loopnum_i; i++) {
    result += a[i] ;
  }

  if (result == Master) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

  return 0 ;

}
