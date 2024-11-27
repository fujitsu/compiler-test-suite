#include  <stdio.h>
 
 
 
int main()
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   
   pi=&ai;
   fi=*pi;
   if(bi=20)
   {
     ei=*pi;
   }
   if(fi==10 && ei==10)
     printf("***  ok ***\n");
   else
     printf("***  ng *** ei=%d fi=%d\n",ei,fi);
 }
