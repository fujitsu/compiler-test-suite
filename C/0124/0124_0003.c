#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub (long int b[]);
int 
main (void)
 {
   int    i,j,n=0,k=50,max;
   float  sum=0.0,m,h;
   long int  a[10] = {0,1,2,3,4,5,6,7,8,9};
   long int  b[10] = {9,8,7,6,5,4,3,2,1,0};
   long int  x[10];
   float     y[10],z[10];
   for(i=n;i<8+2;i=i+1)
    {
      if(a[i] >= b[i])
       {
        x[i] = a[i];
       }
      else
       {
        x[i] = 0;
       }
    }
   for(i=0;i<10;i++)
    {
     printf(" x[%d] => %ld \n",i,x[i]);
    }
   printf("\n*** cast *** \n");
   for(i=0;i<10;i++)
    {
     y[i] = (float)(x[i]);
     y[i] = y[i] + 1.5;
     printf(" y[%d] => %f \n",i,y[i]);
    }
   printf("\n*** Operation ***\n");
   for(i=0;i<10;i++)
    {
     if(y[i] != 1.50)
      {
       z[i] = y[i];
       printf("%f \n",z[i]);
       sum = sum + z[i];
      }
     else
      {
       continue;
      }
    }
   printf("\n*** TOTAL *** \n");
   printf("%f \n",sum);
   printf("\n*** Rounding to the nearest ***\n");
   m=(sum > 0.0)?
   (float)(int)(sum + 0.5) : (float)(int)(sum - 0.5);
   printf("%f \n",m);
   h = 2*m-8/2;
   printf("\n");
   printf("%f \n",h);
   max = sub(b);
   printf("\n*** Max value ***\n");
   printf("%d \n",max);
exit (0);
 }
 int 
sub (long int b[])
 {
   int  i,j=0,max=0;
   for(i=0;i<10;i++)
    {
     b[j*3-2*j]=i*2;
     j++;
    }
   for(i=0;i<=9;i+=1)
    {
     printf("b[%d] => %ld \n",i,b[i]);
    }
   for(i=0;i<10;i++)
    {
     if(max < b[i])
      {
       max = b[i];
      }
    }
   return max;
 }
