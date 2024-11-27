
#include <stdio.h>

#define loopnum_i 100 
#define loopnum_j 100 

#define Master    60000

int test(int a[][loopnum_j], 
         int b[][loopnum_j], 
         int c[][loopnum_j], 
         int *sa, int *sb, int *sc) {

  int i,j ; 
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      *sa += a[i][j] ;
    }
  }
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      *sb += b[i][j] ;
    }
  }
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      *sc += c[i][j] ;
    }
  }

  return 0 ;

}

int main() {
  int i,j,sa,sb,sc,result ;
  int a[loopnum_i][loopnum_j] ;
  int b[loopnum_i][loopnum_j] ;
  int c[loopnum_i][loopnum_j] ;
  

  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      a[i][j] = 1 ;
    }
  }
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      b[i][j] = 2 ;
    }
  }
  for (i=0; i<loopnum_i; i++) {
    for (j=0; j<loopnum_j; j++) {
      c[i][j] = 3 ;
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


