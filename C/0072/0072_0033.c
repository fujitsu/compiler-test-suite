#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct st1 {
  double ra2[256][256],rb2[256][256],rc2[256][256] ;
  double ra1[256],rb1[256] ;
} t;
void func3(struct st1 *p, int l, int n);
void func2(struct st1 *p, int n);
void func1(int l, int m, int n);
int main()
   { 
   struct st1 *pt = &t;
   int i,j,n=256,l=256,m=256 ;
   for(i=0;i<n;i++)
      {
      pt->ra1[i] = tan((double)(1.0/(i+1))) ;
      pt->rb1[i] = sin((double)(1.0/(i+1))) ;
      for(j=m-1;j>=0;j--)
         {
         pt->ra2[i][j] = cos((double)(j+i)) ;
         pt->rb2[i][j] = sqrt((double)(j+i)) ;
         pt->rc2[i][j] = sin((double)(j+i)) ;
         }
      }
   func1(l,m,n) ;
   func2(pt,n) ;
   func3(pt,l,n) ;
   for(i=0;i<n-1;i++)
      {
      printf("rb1[%3d] => %20.3f   rb1[%3d] => %20.3f \n",
             i,pt->rb1[i],i+1,pt->rb1[i+1]) ;
      }
exit (0);
   }
void func1(l,m,n)
   int l,m,n ;
   {
   int ia0,i,j,k ;
   double x ;
   x   = (double)n ;
   ia0 = fmod(x,2.0) ;
   for(j=0;j<m;j++)
      {
      for(i=0;i<l;i++)
         {
         t.ra2[i][j] = 1.8 ;
         }
      for(k=0;k<n-1;k+=2)
         {
         for(i=0;i<l;i++)
            {
            t.ra2[i][j] = t.ra2[i][j] + t.rb2[i][k]   * t.rc2[j][k]
                                  + t.rb2[i][k+1] * t.rc2[j][k+1] ;
            }
         }
      if(ia0 == 1)
         {
         for(i=0;i<l;i++)
            {
            t.ra2[i][j] = t.ra2[i][j] + t.rb2[i][n-1] * t.rc2[j][n-1] ;
            }
         }
      }
   return;
   }
void func2(p,n)
   struct st1 *p;
   int n ;
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
            t.ra2[j][i+1] = t.ra2[j][i+1] - p->ra1[k]   * t.ra2[j][k]
                                      - p->ra1[k+1] * t.ra2[j][k+1] ;
            }
         }
      if(ib0 == 1)
         {
         for(j=i;j<n;j++)
            {
            t.ra2[j][i+1] = t.ra2[j][i+1] - p->ra1[i] * t.ra2[j][i] ;
            }
         }
      }
   return;
   }
void func3(p,l,n)
   struct st1 *p;
   int    l,n;
   {
   int i,j ;
   for(i=0;i<n;i++)
      {
      p->rb1[i] = t.ra2[i][0] / p->ra1[i] ;
      }
   for(j=1;j<l;j++)
      {
      for(i=0;i<n-j+1;i++)
         {
         p->rb1[i] = p->rb1[i] + t.ra2[i][j] / p->ra1[i+j-1] ;
         }
      }
   return;
   }

