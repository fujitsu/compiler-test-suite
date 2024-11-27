#include  <stdio.h>

#define proc    {
#define then    {
#define end     }
static int fun() ;
int main() proc
      int i ;
      
      i=1 ;
      i=fun(i) ;
      if (i!=10)
       printf("***  ng *** i=%d\n",i) ;
      else
       printf("***  ok ***\n") ;
end
#ifdef __STDC__
int fun(i)
#else
static int fun(i)
#endif
      int i ;
      proc
      int j ;
      i+=1 ;
      if      (i<5) return(fun(i)) ;
      else if (i<10) then
       j=fun(i) ;
       return(j) ;
       end
      return(i) ;
end
