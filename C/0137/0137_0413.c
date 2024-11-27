#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int subfun(p1,p2)
  int  *p1,*p2;
{
    int a;
    a=10;
    if(p1!=0){
      a=*p1;
    } else {
      *p2=a;
    }
    return(a);
}
int main()
{
   static int i,j;
          int *mp,*mp2,k;
   i=1;
   j=5;
   mp=&i;
   mp2=&j;
   if((k=subfun(mp,mp2))!=1)
     printf("*** MPTEST31 NG *** K=%d \n",k);
   else
     printf("*** MPTEST31 OK ***\n");
   if((k=subfun(0,mp2))!=10)
     printf("*** MPTEST31 NG *** K=%d \n",k);
   else
     printf("*** MPTEST31 OK ***\n");
exit (0);
}
