#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub(int *a, int *b);
int main (void)
{
  int i;
  static int a[]={11,12,13,14,15,16,17,18,19};
  static int b[]={1,2,3,4,5,6,7,8,9};
  printf("***** unroll042 ***** unroll 1 never 0 not 1\n");
  sub(a,b);
  for(i=0;i<5;i++)
    if(a[i]!=b[i])
      printf("ng a=%d b=%d i=%d\n",a[i],b[i],i);
  printf("ok\n");
  printf("***** unroll042 ***** end\n");
exit (0);
}
int sub(int *a, int *b)
{
  int i;
  for(i=0;;i++)
    {
      *(a++)=*(b++);
      if(i>7)
	return 0;
    }
}
