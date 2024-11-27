#include <stdlib.h>
#include <stdio.h>
#include <math.h>


int ninputs ;
int aa[11],bb[11] ;

int predictable1 (a, b)
     int a[], b[];
{
  register int i, aa, bb;
  for (i = 0; i < ninputs; i++) {
    aa = a[i] ;
    bb = b[i] ;
    if (aa == 10)
      aa = 3 ;
    if (bb == 10)
      bb = 3 ;
    if (aa != bb) {
      int tmp ;
      tmp = aa-bb ;
      return ( tmp ) ;
    }
  }
  return (99);
}

int predictable2 (a, b)
     int a[], b[];
{
  register int i, aa, bb;
  for (i = 0; i < ninputs; i++) {
    aa = a[i] ;
    bb = aa*2 ;
    if (aa == 8)
      aa = 3 ;
    if (bb == 8)
      bb = 3 ;
    if (aa != bb) {
      return ( aa + bb ) ;
    }
  }
  return (99);
}

int restriction_1 (a, b)
     int a[], b[];
{
  register int i, aa, bb;
  for (i = 0; i < ninputs; i++) {
    aa = a[i] ;
    bb = b[i] ;
    if (aa == ninputs)
      aa = 3 ;
    if (bb == ninputs)
      bb = 3 ;
    if (aa != bb) {
      return ( aa - bb ) ;
    }
  }
  return (99);
}

int restriction_2 (a, b)
     int a[], b[];
{
  register int i, aa, bb;
  for (i = 0; i < ninputs; i++) {
    aa = a[i] ;
    bb = b[i] ;
    if (aa == 5)
      aa = 3 ;
    if (bb == 5)
      bb = 3 ;
    if (aa != bb) goto out ;
  }
  return (99);
 out:
  return ( aa - bb ) ;
}

int unable_prediction1 (a, b)
     int a[], b[];
{
  register int i, aa, bb;
  for (i = 0; i < ninputs; i++) {
    aa = a[i] ;
    bb = b[i] ;
    if (aa == 0)
      aa = 3 ;
    if (bb == 5)
      bb = 3 ;
    if (aa != bb) return ( aa*bb ) ;
  }
  return (99);
  exit :;
  return ( aa - bb ) ;
}

int unable_prediction2 (a, b)
     int a[], b[];
{
  register int i, aa, bb;
  for (i = 0; i < ninputs; i++) {
    aa = a[i] ;
    bb = b[10-i] ;
    if (aa == 4)
      aa = 7 ;
    if (bb == 4)
      bb = 3 ;
    if (aa != bb) return (aa+bb) ;
  }
  return (99);
}
int main()
{
  int i ;
  int  r1, r2, r3, r4, r5, r6 ;
  int  R1, R2 ;

  printf (" 033 trueratio_prediction test.\n") ;
  printf (" True ratio prediction can be done only for two functions.\n\n") ;

  printf (" First try for [0,1,2,....,10] and [10,9,8,....,0]\n") ;

  ninputs = 11 ;
  for (i = 0 ; i < ninputs ; i++) {
    aa[i] = i ;
    bb[i] = 10-i ;
  }

  r1=predictable1(aa,bb) ;
  r2=predictable2(aa,bb) ;

  r3=restriction_1(aa,bb) ;
  r4=restriction_2(aa,bb) ;

  r5=unable_prediction1(aa,bb) ;
  r6=unable_prediction2(aa,bb) ;

  printf ("Result  : %d %d %d %d %d %d\n",r1,r2,r3,r4,r5,r6) ;
  printf ("Correct : -3 3 -10 -10 30 10\n") ;
  R1= r1 == -3 && r2 == 3 && r3 == -10 && r4 == -10 && r5 == 30 && r6 == 10 ;
    

  printf (" Second try for [0,1,2,....,10] and [0,1,2,....,10]\n") ;

  for (i = 0 ; i < ninputs ; i++) {
    bb[i] = aa[i] ;
  }

  r1=predictable1(aa,bb) ;
  r2=predictable2(aa,bb) ;

  r3=restriction_1(aa,bb) ;
  r4=restriction_2(aa,bb) ;

  r5=unable_prediction1(aa,bb) ;
  r6=unable_prediction2(aa,bb) ;

  printf ("Result  : %d %d %d %d %d %d\n",r1,r2,r3,r4,r5,r6) ;
  printf ("Correct : 99 3 99 99 0 10\n") ;
  R2= r1 == 99 && r2 == 3 && r3 == 99 && r4 == 99 && r5 == 0 && r6 == 10 ;

  if ( R1 && R2 ) printf (" OK \n") ;
  else printf (" NG  First : %d , Second : %d\n",R1,R2) ;
exit (0);
}
