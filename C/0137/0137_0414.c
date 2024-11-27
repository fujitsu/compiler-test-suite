#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int subfun(p1,p2,i3)
  int  *p1,*p2,*i3;
{
    if(p1!=0){
      *i3=*p1+1;
      *p1=*i3+3;
    } else {
      *p2=*i3;
      return(*p2);
    }
    *p2=*p1+1;
    return(*p2);
}
int main()
{
   static int i,j;
          int *mp,*mp2,k;
   i=1;
   j=5;
   mp=&i;
   mp2=&j;
   if((k=subfun(mp,mp2,&i))!=6)
     printf("*** MPTEST32 NG *** K=%d \n",k);
   else
     printf("*** MPTEST32 OK ***\n");
   if((k=subfun(0,mp2,&j))!=6)
     printf("*** MPTEST32 NG *** K=%d \n",k);
   else
     printf("*** MPTEST32 OK ***\n");
exit (0);
}
