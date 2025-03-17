#include <stdio.h>

int main()
{
  int i;
  int j;
  static int a[40];
  j=0;
				
  for(i=0;i<20;i++)
    {
      a[i+j]=i+j;
      a[i+j]=a[i+j]*(i+j)+j+i;
      j++;
    }
  if(i!=20)
    printf("ng,%d\n",i);
  for(i=0;i<20;i+=2)
    {
      if(a[i]!=(i+1)*i)
	printf("ng,%d\n",a[i]);
    }
  printf("ok\n");
}
