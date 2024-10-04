#include <stdio.h>
int main()
{
float r4a[10]={0,0,0,0,0,0,0,0,0,0};
float r4b[10]={1,2,3,4,5,6,7,8,9,10};
float r4c[10]={3,4,5,6,7,8,9,0,1,2},r4d,r4e;

  int  i,j,n;

  for(i=0;i<10;i+=2)
    {
      n = i-1;
    }

  for(i=0;i<10;i++)
    {
      r4a[i] = i-r4c[i];
    }
  for(i=0;i<10;i++)
    {
      r4b[i] = r4b[i]+r4c[i];
    }
  for(i=0;i<10;i++)
    {
      r4a[i] = r4a[i]+r4b[i];
    }

  printf(" test 1 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);

  for(i=1;i<n;i++)
    {
      r4a[i] = i-r4c[i];
    }
  for(j=1;j<n;j++)
    {
      r4b[j] = r4b[j]+r4c[j];
    }
  for(i=1;i<n;i++)
    {
      r4a[i] = r4a[i]+r4b[i];
    }

  printf(" test 1 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);


  for(i=1;i<n;i++)
    {
      r4a[i] = i-r4c[i];
    }
  for(i=0;i<n;i++)
    {
      r4b[i] = r4b[i]+r4c[i];
    }
  for(i=0;i<10;i++)
    {
      r4a[i] = r4a[i]+r4b[i];
    }

  printf(" test 1 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);



}
