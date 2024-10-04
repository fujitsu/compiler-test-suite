#include <stdio.h>
int main()
{
float r4a[10]={0,0,0,0,0,0,0,0,0,0};
float r4b[10]={1,2,3,4,5,6,7,8,9,10};
float r4c[10]={3,4,5,6,7,8,9,0,1,2};

  int  i,j,n;

  for(i=0;i<10;i+=2)
    {
      n = i-1;
    }

  for(i=0;i<10;i+=2)
    {
      r4a[i] = r4a[i]-r4c[i];
      r4a[i] = r4b[i]+r4a[i];
    }

  printf(" test 1 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);

  for(i=2;i<10;i++)
    {
      r4a[i] = r4a[i]+r4c[i];
      r4a[i] = r4b[i]-r4a[i];
    }

  printf(" test 2 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);
  
  for(i=2;i<n;i++)
    {
      r4a[i] = r4a[i]+r4c[i];
      r4a[i] = r4b[i]-r4a[i];
    }

  printf(" test 3 \n");

  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);

}
