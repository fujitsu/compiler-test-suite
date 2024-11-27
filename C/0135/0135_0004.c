#include <stdlib.h>

#include <stdio.h>
#include <math.h>
int SUN(long int k, long int *r);
int main (void)
{
  long int a[100],m=0,i,j;
  long int b[100]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

  for (i=99; i>=0; i--) a[i]=i;
  i=i+1;
  for (j=0; j<100; j++)
    {
      if(j<=50)
	{
          SUN(a[i],&m);
	  b[j]=m;
        }else{
	  b[j]=j+b[j];
	}
      i=99-i;
    }
  for ( i=1; i<100; i++ ) printf("b[%ld] = %ld\n",i,b[i]);
  exit(0);
}

int SUN(long int k, long int *r)
{
  long int i;
  *r=0;
  for (i=k; i>=0; i--) *r=*r+i;
}
