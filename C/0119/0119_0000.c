#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main() {
  static int d[5], i=0 ;
  int j ;

  printf("-- PK000890 -- \n") ;
  for (i  ; i<5; i++) d[i]=i ;
  for (j=0; j<5; j++) printf("%d==%d \n",j,d[j]) ;
exit (0);
}
