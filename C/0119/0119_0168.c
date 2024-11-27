#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
extern int a[5] ;
int        c[5] = {0} ;
static int d[5] = {0} ;
int main() {
  int i ;
  int j ;

  printf("** SCPX003 ** \n") ;

  for (i=0; i<5; i++) a[i]=i ;
  for (j=0; j<5; j++) printf("%d==%d \n",j,a[j]) ;

  for (i=0; i<5; i++) c[i]=i ;
  for (j=0; j<5; j++) printf("%d==%d \n",j,c[j]) ;

  for (i=0; i<5; i++) d[i]=i ;
  for (j=0; j<5; j++) printf("%d==%d \n",j,d[j]) ;
exit (0);
}
int        a[5] ;
