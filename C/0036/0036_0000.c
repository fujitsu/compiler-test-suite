#include <stdio.h>

  float r4a[100],r4b[100],r4c[100];
int main()
{
  int  i,j,n;
  for(i=0;i<100;i++)
    {
      r4a[i] = 0;
      r4b[i] = i;
      r4c[i] = i+2;
      n = i-20;
    }

  for(i=0;i<100;i++)
    {
      r4a[i] = r4a[i]-r4c[i];
      r4a[i] = r4b[i]+r4a[i];
    }

  printf(" test 1 \n");
  for(i=0;i<100;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);

  for(i=2;i<100;i++)
    {
      r4a[i] = r4a[i]+r4c[i];
      r4a[i] = r4b[i]-r4a[i];
    }

  printf(" test 2 \n");
  for(i=0;i<100;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);
  
  for(i=2;i<n;i++)
    {
      r4a[i] = r4a[i]+r4c[i];
      r4a[i] = r4b[i]-r4a[i];
    }

  printf(" test 3 \n");
  for(i=0;i<100;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);
  
}
