#include  <stdio.h>

int func(a)
   int a ;
{
      if(a==0) goto l010 ;
      return(1) ;
l010: return(0) ;
}
int main() {
   int a,i ;
      a=0 ;
      for(i=0;func(a++);i++) printf("***  ng ***\n") ;
      if (a) printf("***  ok ***\n") ;
      else printf("***  ng ***\n") ;
}
