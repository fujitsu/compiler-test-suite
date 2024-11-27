#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
 struct st1 {
   float a[10][10][10],b[10][10][10],c[10][10];
 } t;
 struct st1 *p = &t;
 long int i,j,k;

 i=0;
 while(i<10)
  {
   j=0;
   while(j<10)
    {
     k=0;
     while(k<10)
      {
       p->a[i][j][k]=(float)(i*j*k);
       k++;
      }
     k=0;
label1:
       p->b[i][j][k]=(float)(i+j+k);
       k++;
      if(k<10) goto label1;
     j++;
    }
   j=0;
label2:
     p->c[i][j]=(float)(i+j);
     j++;
    if(j<10) goto label2;
   i++;
  }

 printf("a[][][]=(i*j*k) \n");
 i=0;
label3:
   j=0;
   while(j<10)
    {
     printf("a[%ld][%ld][0-9]= ",i,j);
     printf("%5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f\n",\
     p->a[i][j][0],p->a[i][j][1],p->a[i][j][2],p->a[i][j][3],p->a[i][j][4],\
     p->a[i][j][5],p->a[i][j][6],p->a[i][j][7],p->a[i][j][8],p->a[i][j][9]);
     j++;
    }
   i++;
   if(i<10) goto label3;
 printf("b[][][]=(i+j+k) \n");
 i=0;
 while(i<10)
  {
   j=0;
label4:
    printf("b[%ld][%ld][0-9]= ",i,j);
    printf("%5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f\n",\
    p->b[i][j][0],p->b[i][j][1],p->b[i][j][2],p->b[i][j][3],p->b[i][j][4],\
    p->b[i][j][5],p->b[i][j][6],p->b[i][j][7],p->b[i][j][8],p->b[i][j][9]);
    j++;
   if(j<10) goto label4;
   i++;
  }
 printf("c[][]=(i+j) \n");
 i=0;
 while(i<10)
  {
   printf("c[%ld][0-9]= ",i);
   printf("%5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f %5.1f\n",\
   p->c[i][0],p->c[i][1],p->c[i][2],p->c[i][3],p->c[i][4],\
   p->c[i][5],p->c[i][6],p->c[i][7],p->c[i][8],p->c[i][9]);
   i++;
  }
exit (0);
}
