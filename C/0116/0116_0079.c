#include <stdio.h>
#define loopnum_i 100
#define index_n 1
#define index_m 1
#define index_l 1
#define Master    327
  int a[loopnum_i] ;
  int b[loopnum_i] ;
  int c[loopnum_i] ;

int test(int n, int m, int l) {

  int i ;
  for (i=1; i<10; i++) {
    a[i] = a[i+n] + 1 ;
    b[i] = b[i+m] + 1 ;
    c[i] = c[i+l] + 1 ;
  }

  return 0 ;

} 

int main() {
  int i,result ;
  int n,m,l ;


  for (i=0; i<loopnum_i; i++) {
    a[i] = 1 ;
    b[i] = 1 ;
    c[i] = 1 ;
  }

  n = index_n ;
  m = index_m ;
  l = index_l ;
  
  test(n,m,l) ;

  result = 0 ;
  for (i=0; i<loopnum_i; i++) {
    result += a[i] + b[i] + c[i];
  }

  if (result == Master) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

  return 0 ;

}
