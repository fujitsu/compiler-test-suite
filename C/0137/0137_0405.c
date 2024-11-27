#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
   struct s {
         int p;
         int ii;
   } sss;
int main()
{
   int i,j;
#ifdef __STDC__
   int func(int i);
#else
   int func();
#endif
   struct s *ext;

   ext = &sss;
   sss.p=0;
   sss.ii=1;
   i=func(ext->p);
   j=func(ext->ii);
   if(i-j != 1) printf("*** MPTEST22 NG *** i=%d,j=%d \n",i,j);
   else printf("*** MPTEST22 OK ***\n");
exit (0);
}
#ifdef __STDC__
int func(int i)
#else
func(i)
int i;
#endif
{
   if(i==0) return(1);
   if(i==1) return(0);
   return(-1);
}
