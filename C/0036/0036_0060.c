#include <stdio.h>
int main()
{
  float r4a[10],r4b[10],r4c[10],s,r4d,r4e[10],r4f[10];
  double r8a[10],r8b[10],r8c[10],ss,r8d,r8e[10],r8f[10];
  int  i,j,n;

  s = 6;
  
  for(i=0;i<10;i++)
    {
      r4a[i] = 0;
      r4b[i] = i;
      r4c[i] = i+2;
      r4d = i-9;
      r4e[i] = 4-i;
      r4f[i] = 5-i;
      n = i-20;
    }

  for(i=0;i<10;i++)
      s = r4d / s - r4c[i];

  printf(" test 1 %f \n",s);

  s = 6;
  for(i=0;i<10;i++)
      s = r4b[3] * s - r4c[i];

  printf(" test 2 %f \n",s);

  for(i=1;i<10;i++)
    {
      r4a[0]= r4a[0] *r4d - r4b[i];
    }
  printf(" test 3 %f \n",r4a[0]);

  s = 6;
  for(i=1;i<9;i++)
    s = -r4c[i] + s * r4b[i];
    
  printf(" test 4 %f \n",s);

  ss = 6;
  
  for(i=0;i<10;i++)
    {
      r8a[i] = 0;
      r8b[i] = i;
      r8c[i] = i+2;
      r8d = i-9;
      r8e[i] = 4-i;
      r8f[i] = 5-i;
      n = i-20;
    }

  for(i=0;i<10;i++)
    ss = r8d / ss - r8c[i];
  
  printf(" test 1 %f \n",ss);

  ss = 6;
  for(i=1;i<10;i++)
    ss = r8b[3] * ss - r8c[i];
  

  printf(" test 2 %f \n",ss);

  ss = 6;
  for(i=0;i<10;i++)
    {
      r8a[0]= r8a[0] *r8d - r8b[i];
    }
  printf(" test 3 %f \n",ss);

  ss = 6;
  for(i=1;i<9;i++)
    ss = -r8c[i] + ss * r8b[i];

  printf(" test 4 %f \n",ss);
  
}
