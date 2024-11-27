#include <stdio.h>
#include <math.h>

#include <stdlib.h>
#define NN 20
#define MM 5
int main()
{
  int i,*p,*q;
  int i4001[NN],i4002[NN];
  int i4003[NN]={3,4,5,0,6,0,5,4,3,1,1,2,3,3,3,4,4,4,5,5};
  double r8001[NN],r8002[NN] ;
  float  r4001[NN],r4002[NN] ;

  for(i=0;i<NN;i4001[i]=i4002[i]=i,r4001[i]=r4002[i]=0.0,
    r8001[i]=r8002[i]=sin((double)(i4001[i]+i4002[i])),i++);

  for(i=0,p=&i4002[0],q=&i4003[0];i<NN;i++)
  {
    if (i4001[i]=sin(r8001[i])<0)
    {
      switch (*(p+i)%MM)
      {
        case 0 : r4001[i]=sin((double)(r8002[i]-i4002[i]));
                 break;
        case 1 : r4001[i]=cos((double)(r8002[i]-i4002[i]));
                 break;
        case 2 : if (i<100)r4001[i]=sin((double)(r8002[i]+i4002[i]));
                break;
        default: r4001[i]=tan((double)(-r8002[i]-i4002[i]));
      }
      switch (*(q+i))
      {
        case 3 : r4002[i]=sqrt((double)i4001[i]);
                 break;
        case 4 : if (i<100) r4002[i]=sqrt((double)i4001[i]+i);
                 break;
        case 5 : if (*(p+i)<100) r4002[i]=i-i4001[i];
                break;
        default: r4002[i] = -100;
      }
    }
    else
    {
      switch (*(p+i)%(MM-1))
      {
        case 3 : r4001[i]=sinh((double)(i4002[i]-r8002[i]));
                 break;
        case 4 : r4001[i]=cosh((double)(i4002[i]-r8002[i]));
                 break;
        case 0 : if (i<100)r4001[i]=sinh((double)(i4002[i]+r8002[i]));
                break;
        default: r4001[i]=tanh((double)(-i4002[i]-r8002[i]));
      }
      switch (*(q+i))
      {
        case 1 : r4002[i]=sin(sqrt((double)i4001[i]));
                 break;
        case 2 : if (i<100) r4002[i]=sin(sqrt((double)i4001[i]+i));
                 break;
        case 6 : if (*(p+i)<100) r4002[i]=sin((double)i-i4001[i]);
                break;
        default: r4002[i] = i - 200;
      }
    }
  }

  for(i=0;i<NN;i++){
    printf("%g %g %d \n",r4001[i],r4002[i],i4001[i]);
  }
exit (0);
}
