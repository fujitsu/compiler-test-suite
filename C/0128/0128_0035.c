#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
 float a[10][10][10],b[10][10][10],c[10][10];
 long int i,j,k;

 i=0;
 while(i<10)
  {
   j=0;
   for(j=0;j<10;j++)
    {
     k=0;
     while(k<10)
      {
       a[i][j][k]=(float)(i*j*k);
       k++;
      }
     for(k=0;k<10;k++)
      {
       b[i][j][k]=(float)(i+j+k);
      }
    }
   j=0;
   while(j<10)
    {
     c[i][j]=(float)(i+j);
     j++;
    }
   i++;
  }

 printf("a[][][]=(i*j*k) \n");
 for(i=0;i<10;i++)
  {
   j=0;
   while(j<10)
    {
     printf("a[%ld][%ld][0-9]= ",i,j);
     printf("%5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f\n",\
     a[i][j][0],a[i][j][1],a[i][j][2],a[i][j][3],a[i][j][4],\
     a[i][j][5],a[i][j][6],a[i][j][7],a[i][j][8],a[i][j][9]);
     j++;
    }
  }
 printf("b[][][]=(i+j+k) \n");
 i=0;
 while(i<10)
  {
   for(j=0;j<10;j++)
   {
    printf("b[%ld][%ld][0-9]= ",i,j);
    printf("%5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f\n",\
    b[i][j][0],b[i][j][1],b[i][j][2],b[i][j][3],b[i][j][4],\
    b[i][j][5],b[i][j][6],b[i][j][7],b[i][j][8],b[i][j][9]);
   }
   i++;
  }
 printf("c[][]=(i+j) \n");
 i=0;
 while(i<10)
  {
   printf("c[%ld][0-9]= ",i);
   printf("%5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f\n",\
   c[i][0],c[i][1],c[i][2],c[i][3],c[i][4],\
   c[i][5],c[i][6],c[i][7],c[i][8],c[i][9]);
   i++;
  }
exit (0);
}
