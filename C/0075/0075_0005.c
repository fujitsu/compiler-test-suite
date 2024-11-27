#include <stdio.h>
int main()
{
   int ib[20],ier,i;
   for (i=0;i<20;i++) {
     ib[i]=1;
   }
   ier=0;
   i=0;
   do {
     if (ib[i]<ib[i+1]) ier++;
     i++;
   } while (ib[i]==0 || i>=9) ;

   if (ib[0]!=10) ier++;
   printf("ier = %d, ib[0]=%d\n", ier, ib[0]) ;
}
