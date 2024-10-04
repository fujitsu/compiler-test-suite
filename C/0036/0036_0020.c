#include <stdio.h>
int sub1 (int ii4b[10], float rr4b[10], double rr8b[10], int n, int m);
int main()
{
  int   i4a[100],i4b[100],i4c[100],i4d;
  float r4a[100],r4b[100],r4c[100],r4d;
  double r8a[100],r8b[100],r8c[100],r8d;
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

  i4d = 0;
  for(i=0;i<100;i++)
    {
      i4d = i4d + i4b[i]-i4c[i];
      
    }
    printf("%d \n",i4d);

  r4d = 0;
  for(i=0;i<100;i++)
    {
      r4d = r4d + r4b[i]+r4c[i];
    }
    printf("%f \n",r4d);

  r8d = 0;
  for(i=0;i<100;i++)
    {
      r8d = r8d + r8b[i]*r8c[i];
    }

    printf("%f \n",r8d);

    sub1(i4b,r4b,r8b,0,10);
}

int 
sub1 (int ii4b[10], float rr4b[10], double rr8b[10], int n, int m)
     
{
  int i4e=0,i;
  float  r4e=0;
  double r8e=0;
  
  for(i=n;i<m;i++)
    {
      i4e = i4e + ii4b[i];
    }
    printf("%d \n",i4e);

  for(i=n;i<m;i++)
    {
      r4e = r4e - rr4b[i];
    }
    printf("%f \n",r4e);

  for(i=n;i<m;i++)
    {
      r8e = r8e + rr8b[i]+2;
    }

    printf("%f \n",r8e);
  
}

