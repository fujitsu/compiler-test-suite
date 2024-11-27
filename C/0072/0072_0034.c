#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
    struct st1 {
        int    ia1[10];
        float  ra2[10][50],rb2[10][50],rc2[10][50],rd2[10][50];
        double da2[10][50+1],db2[10][50],dc2[10][50],dd2[10][50];
    } t;
    struct tag {
        float  ca1[10];
        double cda1[10];
    } x;
   struct tag *p  = &x;
   struct st1 *pt = &t;
   int    i,j,k=0 ;
   for(i=0;i<10;i++)
      {
      p->ca1[i] = sin((double)(i+1)) ;
      x.cda1[i] = cos((double)(i+1)) ;
      pt->ia1[i]    = (i+1) * 5 ;
      for(j=0;j<50;j++)
         {
         pt->ra2[i][j] = tan((double)(j+i+1)) ;
         pt->rb2[i][j] = pt->ra2[i][j] * sqrt((double)(j+1)) ;
         pt->rc2[i][j] = pt->rb2[i][j] * sin((double)(j+1)) ;
         pt->rd2[i][j] = pt->rc2[i][j] * cos((double)(j+1)) ;
         pt->da2[i][j] = (double)pt->ia1[i] ;
         pt->db2[i][j] = pt->da2[i][j] + (double)j ;
         pt->dc2[i][j] = pt->db2[i][j] + (double)j * 3 ;
         pt->dd2[i][j] = pt->dc2[i][j] - j ;
         }
      }
   for(i=0;i<10;i++)
      {
      for(j=0;j<pt->ia1[i];j++)
         {
         pt->ra2[i][j] = sqrt((double)(j+1)) ;
         k++ ;
         pt->da2[i][k] = sqrt((double)(k+1)) ;
         if(k == pt->ia1[i]) k = 0 ;
         }
      }
   i = 0 ;
   while(i != 10)
      {
      for(j=0;j<pt->ia1[i];j++)
         {
         k = j + pt->ia1[i] ;
         pt->rb2[i][j] = sin((double)k) ;
         k = pt->ia1[i] ;
         pt->db2[i][j] = sin((double)k) ;
         }
      i++ ;
      }
   i = -1 ;
lb60:
   i++ ;
      for(j=0;j<pt->ia1[i];j++)
         {
         pt->rd2[i][j] = tan((double)(j+1)) ;
         pt->dd2[i][j] = tan((double)(i+1)) ;
         }
   if(i != 9) goto lb60 ;
   for(i=0;i<10;i++)
      {

      for(j=0;j<50;j++)
         {
         x.ca1[i] = p->ca1[i] + pt->ra2[i][j] - pt->rb2[i][j]
                  / pt->rc2[i][j] * pt->rd2[i][j] ;
         p->cda1[i] = x.cda1[i] + pt->da2[i][j] - pt->db2[i][j]
                  / pt->dc2[i][j] * pt->dd2[i][j] ;
         }
      }
   for(i=0;i<10;i++)
      {
      for(j=0;j<50;j++)
         {
         printf("ra2[%2d][%2d] => %10.3f  rb2[%2d][%2d] => %10.3f\n",
                i,j,pt->ra2[i][j],i,j,pt->rb2[i][j]) ;
         printf("rc2[%2d][%2d] => %10.3f  rd2[%2d][%2d] => %10.3f\n",
                i,j,pt->rc2[i][j],i,j,pt->rd2[i][j]) ;
         printf("da2[%2d][%2d] => %10.3f  db2[%2d][%2d] => %10.3f\n",
                i,j,pt->da2[i][j],i,j,pt->db2[i][j]) ;
         printf("dc2[%2d][%2d] => %10.3f  dd2[%2d][%2d] => %10.3f\n",
                i,j,pt->dc2[i][j],i,j,pt->dd2[i][j]) ;
         }
         printf("x.ca1[%2d] => %10.3f  x.cda1[%2d] => %10.3f\n",
                i,x.ca1[i],i,x.cda1[i]) ;
      }
exit (0);
   }
