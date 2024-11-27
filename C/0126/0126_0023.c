#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

int main()
{
   int      i;
   long int          a[20],b[20],c[20],d[20];
   unsigned long int au[20],bu[20],cu[20],du[20];
   float             ae[20],be[20],ce[20],de[20];
   puts("  test start");

   puts(" *** long int ***");

   for(i=0;i<20;i++)  a[i]=b[i]=c[i]=d[i]=5;

   for(i=0;i<20;i++)  a[i]=b[i] *c[i]+d[i];
   for(i=0;i<20;i++) printf("a[%2d] = %d \n",i,a[i]);

   for(i=0;i<20;i++)  a[i]=b[10]*c[i]+d[i];
   for(i=0;i<20;i++) printf("a[%2d] = %d \n",i,a[i]);

   for(i=0;i<20;i++)  a[i]=b[i] *c[i]-d[i];
   for(i=0;i<20;i++) printf("a[%2d] = %d \n",i,a[i]);

   for(i=0;i<20;i++)  a[i]=b[10]*c[i]-d[i];
   for(i=0;i<20;i++) printf("a[%2d] = %d \n",i,a[i]);

   puts(" *** unsigned long int ***");

   for(i=0;i<20;i++)  au[i]=bu[i]=cu[i]=du[i]=6;

   for(i=0;i<20;i++)  au[i]=bu[i] *cu[i]+du[i];
   for(i=0;i<20;i++) printf("au[%2d] = %d \n",i,au[i]);

   for(i=0;i<20;i++)  au[i]=bu[10]*cu[i]+du[i];
   for(i=0;i<20;i++) printf("au[%2d] = %d \n",i,au[i]);

   for(i=0;i<20;i++)  au[i]=bu[i] *cu[i]-du[i];
   for(i=0;i<20;i++) printf("au[%2d] = %d \n",i,au[i]);

   for(i=0;i<20;i++)  au[i]=bu[10]*cu[i]-du[i];
   for(i=0;i<20;i++) printf("au[%2d] = %d \n",i,au[i]);

   puts(" *** float ***");

   for(i=0;i<20;i++)  ae[i]=be[i]=ce[i]=de[i]=7;

   for(i=0;i<20;i++)  ae[i]=be[i] *ce[i]+de[i];
   for(i=0;i<20;i++) printf("ae[%2d] = %e \n",i,ae[i]);

   for(i=0;i<20;i++)  ae[i]=be[10]*ce[i]+de[i];
   for(i=0;i<20;i++) printf("ae[%2d] = %e \n",i,ae[i]);

   for(i=0;i<20;i++)  ae[i]=be[i] *ce[i]-de[i];
   for(i=0;i<20;i++) printf("ae[%2d] = %e \n",i,ae[i]);

   for(i=0;i<20;i++)  ae[i]=be[10]*ce[i]-de[i];
   for(i=0;i<20;i++) printf("ae[%2d] = %e \n",i,ae[i]);

   puts("  test ended");
	exit(0);
}
