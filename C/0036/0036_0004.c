#include <stdio.h>

float r4a[10]={0,0,0,0,0,0,0,0,0,0};
float r4b[10]={1,2,3,4,5,6,7,8,9,10};
float r4c[10]={3,4,5,6,7,8,9,0,1,2},r4d,r4e;
double r8a[10]={0,0,0,0,0,0,0,0,0,0};
double r8b[10]={1,2,3,4,5,6,7,8,9,10};
double r8c[10]={3,4,5,6,7,8,9,0,1,2};
int main()
{

  int  i,j,n;

  for(i=0;i<10;i+=2)
    {
      n = i-1;
    }

  for(i=0;i<10;i++)
    {
      r4a[i] = i-r4c[i];
      r8a[i] = i-r8c[i];
    }
  for(i=0;i<10;i++)
    {
      r4b[i] = r4b[i]+r4c[i];
      r8b[i] = r8b[i]+r8c[i];
    }
  for(i=0;i<10;i++)
    {
      r4a[i] = r4a[i]+r4b[i];
      r8a[i] = r8a[i]+r8b[i];
    }

  printf(" test 1 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);

  for(i=1;i<n;i++)
    {
      r4a[i] = i-r4c[i];
      r8a[i] = i-r8c[i];
    }
  for(i=1;i<n;i++)
    {
      r4b[i] = r4b[i]+r4c[i];
      r8b[i] = r8b[i]+r8c[i];
    }
  for(i=1;i<n;i++)
    {
      r4a[i] = r4a[i]+r4b[i];
      r8a[i] = r8a[i]+r8b[i];
    }

  printf(" test 2 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);


  for(i=0;i<n;i++)
    {
      r4a[i] = i-r4c[i];
      r8a[i] = i-r8c[i];
    }
  for(i=0;i<10;i++)
    {
      r4b[i] = r4b[i]+r4c[i];
      r8b[i] = r8b[i]+r8c[i];
    }
  for(i=1;i<10;i++)
    {
      r4a[i] = r4a[i]+r4b[i];
      r8a[i] = r8a[i]+r8b[i];
    }

  printf(" test 2 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);
}
