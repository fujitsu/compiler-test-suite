#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct tag1
   {
   int a[10] ;
   int b[10] ;
   } int1[10] ;
struct tag2
   {
   float a[10] ;
   float b[10] ;
   } ral1[10] ;
struct tag3
   {
   double a[10] ;
   double b[10] ;
   } ral2[10] ;
int func4 (struct tag1 *p, struct tag2 *q, struct tag3 *x, int j);
int func3 (struct tag3 *p, int n, int m);
int func2 (int n, int m);
int func1 (struct tag1 *p, int n, int m);
int main (void)
   {
   int i,n=10,m=10 ;
   for(i=0;i<10;i++)
      {
      func1(&int1[i],n,m) ;
      }
   func2(n,m) ;
   func3(&ral2[0],n,m) ;
   for(i=0;i<n;i++)
      {
      func4(&int1[i],&ral1[i],&ral2[i],i) ;
      }
   printf("\n");
exit (0);
   }
int func1 (struct tag1 *p, int n, int m)
   {
   int i ;
   for(i=0;i<n;i+=2)
      {
      p->a[i]   = i ;
      p->a[i+1] = p->a[i] + i ;
      p->b[i]   = i + i ;
      p->b[i+1] = p->b[i] + i + i + i ;
      }
   return 0;
   }
int func2 (int n, int m)
   {
   int i,j ;
   i = 0 ;
   while(i != n)
      {
      for(j=m-1;j>=0;j--)
         {
         ral1[i].a[j] = sin((double)int1[i].a[j]) ;
         }
      for(j=m-1;j>=0;j-=2)
         {
         ral1[i].b[j] = cos((double)int1[i].b[j]) ;
         ral1[i].b[j-1] = tan((double)int1[i].b[j-1]) ;
         }
      i++ ;
      }
   return 0;
   }
int func3 (struct tag3 *p, int n, int m)
   {
   int i,j ;
   for(i=0;i<n;i++)
      {
      for(j=0;j<n;j++)
         {
         p->a[j] = j + 2.0 ;
         p->b[j] = j + 2.0 ;
         }
      p++ ;
      }
   return 0;
   }
int func4 (struct tag1 *p, struct tag2 *q, struct tag3 *x, int j)
   {
   int i ;
   for(i=0;i<10;i++)
      {
      printf("\n") ;
      printf("int1[%2d].a[%2d] => %10d   int1[%2d].b[%2d] => %10d",
             j,i,p->a[i],j,i,p->b[i]) ;
      printf("\n") ;
      printf("ral1[%2d].a[%2d] => %10.3f   ral1[%2d].b[%2d] => %10.3f",
             j,i,q->a[i],j,i,q->b[i]) ;
      printf("\n") ;
      printf("ral2[%2d].a[%2d] => %10.3f   ral2[%2d].b[%2d] => %10.3f",
             j,i,x->a[i],j,i,x->b[i]) ;
      }
   return 0;
   }
