#include <stdio.h>
#define loopnum_i 10
#define Master    60

int test(int *a, int *b, int *c,
         int *d, int *e, int *f,
         int *x, int *y, int *z) {
  int i ;
  for (i=0; i<loopnum_i; i++) {
    a[i] = b[i] + c[i] ;
  }
  for (i=0; i<loopnum_i; i++) {
    d[i] = e[i] + f[i] ;
  }
  for (i=0; i<loopnum_i; i++) {
    x[i] = y[i] + z[i] ;
  }

  return 0 ;

} 

int main() {
  int i,result ;
  int a[loopnum_i] ;
  int b[loopnum_i] ;
  int c[loopnum_i] ;
  int d[loopnum_i] ;
  int e[loopnum_i] ;
  int f[loopnum_i] ;
  int x[loopnum_i] ;
  int y[loopnum_i] ;
  int z[loopnum_i] ;

  for (i=0; i<loopnum_i; i++) {
    a[i] = 0 ;
    b[i] = 1 ;
    c[i] = 1 ;
    d[i] = 0 ;
    e[i] = 1 ;
    f[i] = 1 ;
    x[i] = 0 ;
    y[i] = 1 ;
    z[i] = 1 ;
  }

  
  test(a,b,c,d,e,f,x,y,z) ;

  result = 0 ;
  for (i=0; i<loopnum_i; i++) {
    result += a[i] + d[i] + x[i];
  }

  if (result == Master) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

  return 0 ;

}
