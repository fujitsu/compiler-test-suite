#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func3(double ra1[], double rb1[], int l, int n);
int func2 (double ra1[], int n);
int func1 (int l, int m, int n);

double ra2[256][256],rb2[256][256],rc2[256][256] ;
double ra1[256],rb1[256] ;
int main (void)
   {
   int i,j,n=256,l=256,m=256 ;
   for(i=0;i<n;i++)
      {
      ra1[i] = tan((double)(1.0/(i+1))) ;
      rb1[i] = sin((double)(1.0/(i+1))) ;
      for(j=m-1;j>=0;j--)
         {
         ra2[i][j] = cos((double)(j+i)) ;
         rb2[i][j] = sqrt((double)(j+i)) ;
         rc2[i][j] = sin((double)(j+i)) ;
         }
      }
   func1(l,m,n) ;
   func2(ra1,n) ;
   func3(ra1,rb1,l,n) ;
   for(i=0;i<n-1;i++)
      {
      printf("rb1[%3d] => %20.3f   rb1[%3d] => %20.3f \n",
             i,rb1[i],i+1,rb1[i+1]) ;
      }
exit (0);
   }
int func1 (int l, int m, int n)
   {
   int ia0,i,j,k ;
   double x ;
   x   = (double)n ;
   ia0 = fmod(x,2.0) ;
   for(j=0;j<m;j++)
      {
      for(i=0;i<l;i++)
         {
         ra2[i][j] = 1.8 ;
         }
      for(k=0;k<n-1;k+=2)
         {
         for(i=0;i<l;i++)
            {
            ra2[i][j] = ra2[i][j] + rb2[i][k]   * rc2[j][k]
                                  + rb2[i][k+1] * rc2[j][k+1] ;
            }
         }
      if(ia0 == 1)
         {
         for(i=0;i<l;i++)
            {
            ra2[i][j] = ra2[i][j] + rb2[i][n-1] * rc2[j][n-1] ;
            }
         }
      }
   }
int func2 (double ra1[], int n)
   {
   int i,j,k,ia0,ib0 ;
   double x ;
   for(i=1;i<n-1;i++)
      {
      x   = (double)i ;
      ib0 = fmod(x,2.0) ;
      ia0 = i - 1 ;
      for(k=0;k<ia0;k+=2)
         {
         for(j=0;j<i+1;j+=n-1)
            {
            ra2[j][i+1] = ra2[j][i+1] - ra1[k]   * ra2[j][k]
                                      - ra1[k+1] * ra2[j][k+1] ;
            }
         }
      if(ib0 == 1)
         {
         for(j=i;j<n;j++)
            {
            ra2[j][i+1] = ra2[j][i+1] - ra1[i] * ra2[j][i] ;
            }
         }
      }
   }
int func3(double ra1[], double rb1[], int l, int n)
   {
   int i,j ;
   for(i=0;i<n;i++)
      {
      rb1[i] = ra2[i][0] / ra1[i] ;
      }
   for(j=1;j<l;j++)
      {
      for(i=0;i<n-j+1;i++)
         {
         rb1[i] = rb1[i] + ra2[i][j] / ra1[i+j-1] ;
         }
      }
   }
