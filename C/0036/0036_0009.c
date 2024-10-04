#include <math.h>
#include <stdio.h>

float r4a[10]={0,0,0,0,0,0,0,0,0,0};
float r4b[10]={1,2,3,4,5,6,7,8,9,10};
float r4c[10]={3,4,5,6,7,8,9,1.5,1,2};
double r8a[10]={0,0,0,0,0,0,0,0,0,0};
double r8b[10]={1,2,3,4,5,6,7,8,9,10};
double r8c[10]={3,4,5,6,7,8,9,1.5,1,2};
int main()
{

  int  i,j,n,m;

  for(i=0;i<10;i+=2)
    {
      n = i-1;
      m = 1;
    }

  for(i=0;i<10;i++)
    {
      r4a[i] = sin(r4c[i]);
      r4b[i] = cos(r4c[i]);
    }

  printf(" test 1 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4b[i],r4b[i+1],r4b[i+2],r4b[i+3],r4b[i+4]);


  for(i=m;i<n;i++)
    {
      r4a[i] = sin(r4b[i])+cos(r4b[i]);
      r4a[i] = r4a[i] + i;
    }

  printf(" test 2 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);

  for(i=0;i<10;i++)
    {
      r8a[i] = sin(r8b[i])*cos(r8c[3]);
      r8b[i] = r8c[i]+r8b[i];
    }

  printf(" test 1 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8b[i],r8b[i+1],r8b[i+2],r8b[i+3],r8b[i+4]);


  for(i=m-1;i<n+1;i++)
    {
      r8a[i] = r8a[i] - 0 +r8c[2];
      r8b[i] = 0 - r8b[i] - r8c[3];
    }

  printf(" test 2 \n");
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8b[i],r8b[i+1],r8b[i+2],r8b[i+3],r8b[i+4]);
  }
