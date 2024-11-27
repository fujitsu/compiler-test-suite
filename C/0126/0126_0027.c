#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

int main()
{
   int   i;
   double a[1000],b[1000],c[1000],x[1000];
   puts("  test start");
      for(i=0;i<1000;i++)
      {
        b[i]=i;
        c[i]=i;
      }
      for(i=0;i<1000;i++)
      {
        a[i]=b[i]+c[i];
        b[i]=sin(a[i]);
        x[i]=b[i]+c[i];
      }
      for(i=0;i<1000;i++) printf("x[%d] = %g \n",i,x[i]);
   puts("  test ended");
	exit(0);
}
