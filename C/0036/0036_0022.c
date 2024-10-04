#include <stdio.h>
int sub1 (int n, int m);

  int   i4a[100],i4b[100],i4c[100],i4d[5];
  float r4a[100],r4b[100],r4c[100],r4d[5];
  double r8a[100],r8b[100],r8c[100],r8d[5];
  int i4e[5],i;
  float  r4e[5];
  double r8e[5];
int 
main (void)
{
  int  i,j;
  for(i=0;i<100;i++)
    {
      i4a[i] = 0;
      i4b[i] = i;
      i4c[i] = i+2;
      r4a[i] = 0;
      r4b[i] = i;
      r4c[i] = i+2;
      r8a[i] = 0;
      r8b[i] = i;
      r8c[i] = i+2;
    }

  i4d[1] = 0;
  for(i=0;i<100;i++)
    {
      i4d[1] = i4d[1] + i4b[i]-i4c[i];
      
    }
    printf("%d \n",i4d[1]);

  r4d[2] = 0;
  for(i=0;i<100;i++)
    {
      r4d[2] = r4d[2] + r4b[i]+r4c[i];
    }
    printf("%f \n",r4d[2]);

  r8d[0] = 0;
  for(i=0;i<100;i++)
    {
      r8d[0] = r8d[0] + r8b[i]*r8c[i];
    }

    printf("%f \n",r8d[0]);

    sub1(0,10);
}

int 
sub1 (int n, int m)
{
  
  i4e[4] = 3;
  for(i=n;i<m;i++)
    {
      i4e[4] = i4e[4] + i4b[i];
    }
    printf("%d \n",i4e[4]);

    r4e[2] = 2;
  for(i=n;i<m;i++)
    {
      r4e[2] = r4e[2] - r4b[i];
    }
    printf("%f \n",r4e[2]);

    r8e[1] = 1;
  for(i=n;i<m;i++)
    {
      r8e[1] = r8e[1] + r8b[i]+2;
    }

    printf("%f \n",r8e[1]);
  
}

