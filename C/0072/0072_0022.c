#include <stdio.h>
#include <math.h>

#include <stdlib.h>
int main()
{
  int i,j,k=0;
  struct st1 {
    double r8001[10],r8002[10];
    double r8003[10],r8004[10];
  } t1;
  
  struct st1 *pt = &t1;
  
  for(i=0;i<10;pt->r8001[i]=pt->r8002[i]=sin((double)i),i++);
 
  for(i=9;i>=0;i--)
  {
    pt->r8003[i] = sqrt((double)i);
    if (abs((int)pt->r8001[i])&&k)
    {
      pt->r8003[i] = pt->r8003[i] * pt->r8002[i] + pt->r8001[i] ;
      pt->r8004[i] = pt->r8003[i] ;
    }
    else 
    {
      pt->r8003[i] = pt->r8003[i] * pt->r8001[i] + pt->r8002[i] ;
      pt->r8004[i] = pt->r8003[i] ;
    }
  }
  for(i=0;i<10;i++) printf("%f \n",pt->r8004[i]);
  printf("\n");
 
  for(i=0;i<10;i++)
  {
    if (i%(k+1))
    {
      pt->r8003[i] = cos(pt->r8003[i]) + pt->r8001[i] ;
      if (pt->r8003[i]>pow(i,0))
      {
        pt->r8004[i] = abs((int)pt->r8004[i])/i  ;
        pt->r8004[i] = i ;
      }
      else
        pt->r8004[i] = abs((int)pt->r8004[i]) * i ;
    }
    else 
    {
      if (i%3)
        pt->r8004[i] = sin(pt->r8001[i]) + pt->r8003[i] ;
      else
      {
        pt->r8004[i] = i + 1;
        pt->r8004[i] = pt->r8003[i] * pt->r8002[i] ;
      }
      pt->r8004[i] = pt->r8001[i] + cos(pt->r8003[i]);
    }
    pt->r8004[i] = pt->r8004[i] + pt->r8003[i] + pt->r8002[i] + pt->r8001[i] ;
  }
 
  for(i=0;i<10;i++) printf("%f \n",pt->r8004[i]);
  printf("\n");
exit (0);
}
