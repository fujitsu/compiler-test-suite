#include <stdio.h>

#define loopnum_i 10 
#define loopnum_j 10 
#define loopnum_k 10 

#define Master    6000

int test(int a[][loopnum_j][loopnum_k], 
         int b[][loopnum_j][loopnum_k], 
         int c[][loopnum_j][loopnum_k], 
         int *sa, int *sb, int *sc) {

  int i,j,k ; 
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      for (k=0; k<loopnum_k; k++) {
        *sa += a[i][j][k] ;
      }
    }
  }
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      for (k=0; k<loopnum_k; k++) {
        *sb += b[i][j][k] ;
      }
    }
  }
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      for (k=0; k<loopnum_k; k++) {
        *sc += c[i][j][k] ;
      }
    }
  }

  return 0 ;

}

int main() {
  int i,j,k,sa,sb,sc,result ;
  int a[loopnum_i][loopnum_j][loopnum_k] ;
  int b[loopnum_i][loopnum_j][loopnum_k] ;
  int c[loopnum_i][loopnum_j][loopnum_k] ;
  

  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      for (k=0; k<loopnum_k; k++) {
        a[i][j][k] = 1 ;
      }
    }
  }
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      for (k=0; k<loopnum_k; k++) {
        b[i][j][k] = 2 ;
      }
    }
  }
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      for (k=0; k<loopnum_k; k++) {
        c[i][j][k] = 3 ;
      }
    }
  }

  result = 0 ;
  sa = 0 ;
  sb = 0 ;
  sc = 0 ;
  
  test(a,b,c,&sa,&sb,&sc) ;

  result = sa + sb + sc ;

  if (result == Master) {
    printf("%s\n", "ok") ;
  }else{
    printf("%s\n", "ng") ;
  }

  return 0 ;

}


