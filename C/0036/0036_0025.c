#include <stdio.h>
int main()
{
  int   i4a[10],i4b[10],i4c[10],i4d[5];
  float r4a[10],r4b[10],r4c[10],r4d[5];
  double r8a[10],r8b[10],r8c[10],r8d[5];
  int i4e[5];
  float  r4e[5];
  double r8e[5];

  int  i,j,ll,nn;
  for(i=0;i<10;i++)
    {
      i4a[i] = i;
      i4b[i] = i;
      i4c[i] = i+2;
      r4a[i] = i;
      r4b[i] = i;
      r4c[i] = i+2;
      r8a[i] = 1;
      r8b[i] = i;
      r8c[i] = i+2;
      nn = 0;
    }

  for(i=0;i<10;i++)
    {
      r4a[i4a[i]]= r4b[i4a[i]] + r4c[i4a[i]] * r4b[i4a[i]];
    }

  for(i=0;i<10;i++)
    {
      r8a[i4a[i]]= r8b[i4a[i]] - r8c[i4a[i]] - r8c[i4a[i]];
    }

  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);
  
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);
  printf("\n");

  for(i=0;i<10;i++)
    {
      r4a[i]= r4b[i] + r4c[i] + r4a[i+nn];
    }
  for(i=i4a[0];i<i4a[9];i=i+i4a[1])
    {
      r4a[i]= r4b[i] + r4c[i] + r4a[i];
    }
  for(i=0;i<10;i++)
    {
      r8a[i]= r8b[i] + r8c[i] + r8a[i+nn];
    }
  j = 1;
  
  for(i=i4a[j-1];i<i4a[j+8];i=i+i4a[j])
    {
      r8a[i]= r8b[i] + r8c[i] + r8a[i];
    }
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);
  printf("\n");
}

