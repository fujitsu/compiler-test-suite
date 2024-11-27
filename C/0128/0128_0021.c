#include <stdio.h>
#include <math.h>

#include <stdlib.h>
int main()
{
  int i,j,k=0;
  double r8001[10],r8002[10];
  double r8003[10],r8004[10];
 
  for(i=0;i<10;r8001[i]=r8002[i]=sin((double)i),i++);
 
  for(i=9;i>=0;i--)
  {
    r8003[i] = sqrt((double)i);
    if (abs((int)r8001[i])&&k)
    {
      r8003[i] = r8003[i] * r8002[i] + r8001[i] ;
      r8004[i] = r8003[i] ;
    }
    else 
    {
      r8003[i] = r8003[i] * r8001[i] + r8002[i] ;
      r8004[i] = r8003[i] ;
    }
  }
  for(i=0;i<10;i++) printf("%f \n",r8004[i]);
  printf("\n");
 
  for(i=0;i<10;i++)
  {
    if (i%(k+1))
    {
      r8003[i] = cos(r8003[i]) + r8001[i] ;
      if (r8003[i]>pow(i,0))
      {
        r8004[i] = abs((int)r8004[i])/i  ;
        r8004[i] = i ;
      }
      else
        r8004[i] = abs((int)r8004[i]) * i ;
    }
    else 
    {
      if (i%3)
        r8004[i] = sin(r8001[i]) + r8003[i] ;
      else
      {
        r8004[i] = i + 1;
        r8004[i] = r8003[i] * r8002[i] ;
      }
      r8004[i] = r8001[i] + cos(r8003[i]);
    }
    r8004[i] = r8004[i] + r8003[i] + r8002[i] + r8001[i] ;
  }
 
  for(i=0;i<10;i++) printf("%f \n",r8004[i]);
  printf("\n");
exit (0);
}
