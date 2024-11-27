#include <stdio.h>
#include <math.h>

#include <stdlib.h>
#define NN 20
#define MM 5
int main()
{
  struct st1 {
    int i4001[NN],i4002[NN],i4003[NN];
    double r8001[NN],r8002[NN];
    float  r4001[NN],r4002[NN];
  } t1;
  struct st1 *pt = &t1;
  
  int i,*p,*q;
  
  int wk_i4003[NN]={3,4,5,0,6,0,5,4,3,1,1,2,3,3,3,4,4,4,5,5};
  for(i=0;i<NN;i++){
    pt->i4003[i]=wk_i4003[i];
  }

  for(i=0;i<NN;pt->i4001[i]=pt->i4002[i]=i,pt->r4001[i]=pt->r4002[i]=0.0,
    pt->r8001[i]=pt->r8002[i]=sin((double)(pt->i4001[i]+pt->i4002[i])),i++);

  for(i=0,p=&pt->i4002[0],q=&pt->i4003[0];i<NN;i++)
  {
    if (pt->i4001[i]=sin(pt->r8001[i])<0)
    {
      switch (*(p+i)%MM)
      {
        case 0 : pt->r4001[i]=sin((double)(pt->r8002[i]-pt->i4002[i]));
                 break;
        case 1 : pt->r4001[i]=cos((double)(pt->r8002[i]-pt->i4002[i]));
                 break;
        case 2 : if (i<100)pt->r4001[i]=sin((double)(pt->r8002[i]+pt->i4002[i]));
                break;
        default: pt->r4001[i]=tan((double)(-pt->r8002[i]-pt->i4002[i]));
      }
      switch (*(q+i))
      {
        case 3 : pt->r4002[i]=sqrt((double)pt->i4001[i]);
                 break;
        case 4 : if (i<100) pt->r4002[i]=sqrt((double)pt->i4001[i]+i);
                 break;
        case 5 : if (*(p+i)<100) pt->r4002[i]=i-pt->i4001[i];
                break;
        default: pt->r4002[i] = -100;
      }
    }
    else
    {
      switch (*(p+i)%(MM-1))
      {
        case 3 : pt->r4001[i]=sinh((double)(pt->i4002[i]-pt->r8002[i]));
                 break;
        case 4 : pt->r4001[i]=cosh((double)(pt->i4002[i]-pt->r8002[i]));
                 break;
        case 0 : if (i<100)pt->r4001[i]=sinh((double)(pt->i4002[i]+pt->r8002[i]));
                break;
        default: pt->r4001[i]=tanh((double)(-pt->i4002[i]-pt->r8002[i]));
      }
      switch (*(q+i))
      {
        case 1 : pt->r4002[i]=sin(sqrt((double)pt->i4001[i]));
                 break;
        case 2 : if (i<100) pt->r4002[i]=sin(sqrt((double)pt->i4001[i]+i));
                 break;
        case 6 : if (*(p+i)<100) pt->r4002[i]=sin((double)i-pt->i4001[i]);
                break;
        default: pt->r4002[i] = i - 200;
      }
    }
  }

  for(i=0;i<NN;i++){
    printf("%g %g %d \n",pt->r4001[i],pt->r4002[i],pt->i4001[i]);
  }
exit (0);
}
