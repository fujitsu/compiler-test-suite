#include <stdio.h>

#define loopnum_i 10000 
#define loopnum_j 10000 
#define Master    10000

int test(int *a, int *b, int *si, int *sj ) {

  int i,j ; 
  for (i=0; i<loopnum_i; i++) {
    *si += a[i] ;
  }
  for (j=0; j<loopnum_j; j++) {
    *sj += b[j] ;
  }

  return 0 ;

}

int main() {
  int i,j,si,sj,result ;
  int a[loopnum_i], b[loopnum_j] ;
  

  for (i=0; i<loopnum_i; i++) {
    a[i] = 0 ;
  }
  for (j=0; j<loopnum_j; j++) {
    b[j] = 1 ;
  }

  result = 0 ;
  si = 0 ;
  sj = 0 ;
  
  test(a,b,&si,&sj) ;

  result = si + sj ;

  if (result == Master) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

  return 0 ;

}


