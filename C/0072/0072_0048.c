#include <stdlib.h>
#include <stdio.h>
#include <math.h>


#define N 100
void output();

struct st1 {
  float  a[N],b[N];
  double c[N][N];
} t;
struct st1 *p = &t;
int main()
{
  int i,j,count=0;

  for(i=0;i<N/2+N/2;i++)
  {
   p->a[i]=(float)i;
    for(j=-1;++j<N;count++)
    {
      p->c[i][j]=p->a[i];
    }
   p->b[i]=(float)N-p->a[i];
  }
for(i=j;--i>=0;count++)
  {
    if(p->a[i]>=0.0)
    {
      p->b[i]=p->a[i]+p->b[i];
    }
    else
    {
    ;
    }
   }
 output(p->a,p->b,p->c);
 printf("count= %d  i= %d  j= %d\n",count,i,j);
exit (0);
}
void output(float *a,float *b,double *c)
{
  float  *fend;
  double *dend;

  printf("\n ****a**** \n");

  for(fend=a+N;a<fend;a++)
  {
    printf(" %f\n",*a);
  }

  printf("\n ****b**** \n");

  for(fend=b+N;b<fend;b++)
  {
    printf(" %f\n",*b);
  }

  printf("\n ****c**** \n");

  for(dend=c+N*N;c<dend;c++)
  {
    printf(" %g\n",*c);
  }
  printf("\n");
}

