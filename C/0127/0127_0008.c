#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()                                      
     {
     long int a[10][10][10][10][10];
     long int b[10][10][10][10][10];
          int i;
          int j;
          int k;
          int l;
          int m;
          int n;
          for(i=0;i<1;i++)                   
             {
             for(j=0;j<1;j++)
                {
                for(k=0;k<1;k++)
                   {
                   for(l=0;l<1;l++)
                      {
                      for(m=0;m<1;m++)
                         {
                         a[0][0][0][0][0]=0;
                         }
                      }
                   }
                }
             }
          i=0;
          n=i;
          for(n;i<10;i++)
             {
             for(j=0;j<10;j++)
                {
                for(k=0;k<10;k++)
                   {
                   for(l=0;l<10;l++)
                      {
                      for(m=0;m<10;m++)      
                         {
                         a[i][j][k][l][m]=a[i*(j*(k*(l+m)))-(i*(j*(k*(l+m))))]
                                           [i*(j*(k*(l+m)))-(i*(j*(k*(l+m))))]
                                           [i*(j*(k*(l+m)))-(i*(j*(k*(l+m))))]
                                           [i*(j*(k*(l+m)))-(i*(j*(k*(l+m))))]
                                           [i*(j*(k*(l+m)))-(i*(j*(k*(l+m))))];
                         }
                      }
                   }
                }
             }
          for(i=0;i<10;i++)                     
             {
             for(j=0;j<10;j++)
                {
                for(k=0;k<10;k++)
                   {
                   for(l=0;l<10;l++)
                      {
                      for(m=0;m<10;m++)
                         {
                         b[i][j][k][l][m]=a[i][j][k][l][m];
                         }
                      }
                   }
                }
             }
          for(i=0;i<10;i++)                      
             {
             for(j=0;j<10;j++)
                {
                for(k=0;k<10;k++)
                   {
                   for(l=0;l<10;l++)
                      {
                      for(m=0;m<10;m++)
                         {
                         printf("b[%d][%d][%d][%d][%d]=%ld \n",i,j,k,l,m,n,b[i][j][k][l][m]);
                         }
                      }
                   }
                }
             }
	exit(0);
          }
         
