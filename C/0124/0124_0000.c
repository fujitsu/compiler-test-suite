#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <stdio.h>
#include <math.h>
int (*signum)() ;
int isignum(int *a) ;
int dsignum(double *a) ;
int main()
{
double mf[100] ;
int    mi[100] ;
int    ret1[100] , ret2[100] ;
int    i ;
for(i=0 ; i<100 ; i++)
   {
   mi[i] = 100 + i ;
   }
for(i=0 ; i<100 ; i++)
   {
   mf[i] = 50.0 + (-(double)i) ;
   }
signum = isignum ;
for(i=0 ; i<100 ; i++)
   {
   ret1[i] = signum(mi) ;
   }
for(i=0 ; i<100 ; i++)
   {
   if(ret1[i] == 1)
     {
     mi[i] = mi[i] + (double) i ;
     }
   }
for(i=0 ; i<100 ; i++)
   {
   printf("data[i]:%d ret[i]:%d \n",mi[i],ret1[i]) ;
   }
signum = dsignum ;
for(i=0 ; i<100 ; i++)
   {
   ret2[i] = signum(mf) ;
   }
for(i=0 ; i<100 ; i++)
   {
   if(ret2[i] == 1)
     {
     mf[i] = mf[i] - (double) i ;
     }
   }
for(i=0 ; i<100 ; i++)
   {
   printf("data[%d]:%f ret[%d]:%d \n",i,mf[i],i,ret2[i]) ;
   }
exit (0);
}
int isignum(ma)
int ma[] ;
{
int i ;
for(i=0 ; i<100 ; i++)
   {
   if(ma[i] == 0)          return(0) ;
      else if(ma[i] > 0)   return(1) ;
      else                 return(-1) ;
   }
}
int    dsignum(mf)
double mf[] ;
{
int i ;
for(i=0 ; i<100 ; i++)
   {
   if(mf[i] == 0.000)       return(0) ;
     else if(mf[i] > 0.000) return(1) ;
     else                   return(-1) ;
   }
}
