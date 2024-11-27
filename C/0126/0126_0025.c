#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

int main()
{
   int    i;
   double a[10],b[10];
   puts("  test start");
   for(i=0;i<10;i++) a[i]=0;
   for(i=0;i<10;i++) b[i]=16;

   for(i=0;i<10;i++)
   {
     if(i < 5) a[i] = sqrt(b[i]);
   }

   for(i=0;i<10;i++) printf("a[%d] = %f \n",i,a[i]);
   puts("  test ended");
	exit(0);
}
