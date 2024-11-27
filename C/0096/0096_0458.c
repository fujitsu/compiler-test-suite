#include  <stdio.h>

#if INT64
#define int __int32
#endif

#define proc    {
#define then    {
#define end     }
static int fun() ;
#ifdef __STDC__
int fun(i)
#else
static int fun(i)
#endif
      int i ;
      proc
      if ((2+3) == 5 )
                                 goto l1 ;
                                          return(1) ;
l1:   if ( 5 != (2+3))
                                          return(2) ;
      if ( sizeof(i) == 4 )
                                 goto l3 ;
                                          return(3) ;
l3:   if ( 4 != sizeof(i) )
                                          return(4) ;
      if ((2+3) == 5 && i == 1 )
                                 goto l5 ;
                                          return(5) ;
l5:   if ( i == 1 && 5 == (3+2))
                                 goto l6 ;
                                          return(6) ;
l6:   if ((1+4) != 5 || i != 1 )
                                          return(7) ;
      if ( i != 1 || 5 != (4+1))
                                          return(8) ;
                                          return(0) ;
end
int main() proc
      int i ;
      
      i=fun(1) ;
      if (i!=0)
       printf("***  ng *** i=%d\n",i) ;
      else
       printf("***  ok ***\n") ;
end
