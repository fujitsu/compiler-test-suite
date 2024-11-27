#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <stdio.h>
void swap(int *x , int *y) ;
int main()
{
int    a[100] , b[100] ;
int    ax[100] , bx[100] ;
int    axx[100] , bxx[100] ;
int    i ;
for(i=0 ; i<100 ; i++)
   {
   a[i] = i + 100 ;
   b[i] = 100 - i ;
   }
for(i=0 ; i<100 ; i++)
   {
   printf("a[%d] = %d b[%d] = %d \n",i,a[i],i,b[i]) ;
   }
swap(a , b) ;
for(i=0 ; i<100 ; i++)
   {
   ax[i]  = a[i] ;
   bx[i]  = b[i] ;
   axx[i] = 0 ;
   bxx[i] = 0 ;
   if(ax[i] < 50)
     {
     axx[i] = 1 ;
     }
   if(bx[i] < 50)
     {
     bxx[i] = 1 ;
     }
   }
for(i=0 ; i<100 ; i++)
   {
   ax[i]  = a[i] ;
   bx[i]  = b[i] ;
   bxx[i] = 0 ;
   }
for(i=0 ; i<100 ; i++)
   {
   printf("a[%d]:%d:%d b[%d]:%d:%d \n",i,a[i],axx[i],i,b[i],bxx[i]) ;
   }
exit (0);
}
void    swap(x , y)
int       x[] , y[] ;
{
int       wk[100] ;
int       i ;
for(i=0 ; i<100 ; i++)
   {
   wk[i] = x[i] ;
   x[i] = y[i]  ;
   y[i] = wk[i] ;
   }
}
