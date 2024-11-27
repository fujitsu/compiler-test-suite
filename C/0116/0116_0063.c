#include <stdio.h>

#define loopnum_i 10000 
#define Master    10000

int test(int *a, int *si) {

  int i ; 
  for (i=0; i<loopnum_i; i++) {
    *si += a[i] ;
  }

  return 0 ;

}

int main() {
  int i,si,result ;
  int a[loopnum_i] ;
  

  for (i=0; i<loopnum_i; i++) {
    a[i] = 1 ;
  }

  result = 0 ;
  si = 0 ;
  
  test(a,&si) ;

  result = si ;

  if (result == Master) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

  return 0 ;

}
