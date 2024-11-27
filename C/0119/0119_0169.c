#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int b[5] ;
static int c[5] ;
int main() {
  int a[5] ;
  int i ;

  printf("** SCPX004 ** \n") ;
  for (i=0; i<5; i++) a[i]=i ;
  for (i=0; i<5; i++) printf("%d==%d \n",i,a[i]) ;

  for (i=0; i<5; i++) b[i]=i ;
  for (i=0; i<5; i++) printf("%d==%d \n",i,b[i]) ;

  for (i=0; i<5; i++) c[i]=i ;
  for (i=0; i<5; i++) printf("%d==%d \n",i,c[i]) ;
exit (0);
}
