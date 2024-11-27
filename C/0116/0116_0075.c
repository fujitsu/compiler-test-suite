

#include <stdio.h>

#define loopnum_i 10000 
#define loopnum_j 10000 
#define loopnum_k 10000 

#define Master    30000

int test(int *a, int *b, int *c, int *si, int *sj, int *sk) {

  int i,j,k ; 
  for (i=0; i<loopnum_i; i++) {
    *si += a[i] ;
  }
  for (j=0; j<loopnum_j; j++) {
    *sj += b[j] ;
  }
  for (k=0; k<loopnum_k; k++) {
    *sk += c[k] ;
  }

  return 0 ;

}

int main() {
  int i,j,k,si,sj,sk,result ;
  int a[loopnum_i], b[loopnum_j], c[loopnum_k] ;
  

  for (i=0; i<loopnum_i; i++) {
    a[i] = 0 ;
  }
  for (j=0; j<loopnum_j; j++) {
    b[j] = 1 ;
  }
  for (k=0; k<loopnum_k; k++) {
    c[k] = 2 ;
  }

  result = 0 ;
  si = 0 ;
  sj = 0 ;
  sk = 0 ;
  
  test(a,b,c,&si,&sj,&sk) ;

  result = si + sj + sk ;

  if (result == Master) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

  return 0 ;

}


