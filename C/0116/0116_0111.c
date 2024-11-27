#include <stdio.h>
#define loopnum_i 10000
#define Master    20000

int test(int *a, int *b, int *c) {

  int i ;
  for (i=0; i<loopnum_i; i++) {
    a[i] = b[i] + c[i] ;
  }

  return 0 ;

} 

int main() {
  int i,result ;
  int a[loopnum_i] ;
  int b[loopnum_i] ;
  int c[loopnum_i] ;

  for (i=0; i<loopnum_i; i++) {
    a[i] = 0 ;
    b[i] = 1 ;
    c[i] = 1 ;
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
