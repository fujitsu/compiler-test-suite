#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub1(int e[]);
int init(float a[], double b[], float d[]);

struct st1 {
  int    c[10],e[3][3];
  float  a[10][10],d[10][10];
  double b[10][10];
} t1;
int main()
{
  int i,j,*p,k=1,m,l;
  struct st1 *p1 = &t1;
  int wk_c[10]={1,0,0,1,1,1,0,1,0,1};
  
  for(i=0;i<10;i++){
    p1->c[i]=wk_c[i];
  }
  
  init(&p1->a,&p1->b,&p1->d) ;

  for(i=0;i<3;i++)
    for(j=0;j<3;j++)
      p1->e[i][j]=i;
  p=&p1->e[0][0];
  for(i=0;i<10;i++)
  {
    if (sin((double)p1->c[i]))
      for(j=0;j<10;j++)
        p1->d[i][j] = p1->a[i][j] * ((i%2)+1)  ;
    else
      for(j=0;j<10;j++)
      {
        p1->d[i][j] = p1->b[i][j] / ((i%3)+1)  ;
        for(l=0;l<3;l++)
          for(m=0;m<3;m++)
            *(p+3*l+m) = l + m ;
      }
  }
  for(i=0;i<10;i+=2)
    for(j=0;j<10;j+=5)
      printf("%f \n",p1->d[i][j]);

  for(i=0;i<3;i++)
    for(j=0;j<3;j++)
      printf("%d ",p1->e[i][j]);
  printf("\n");

  sub1(&p1->e);
  
  for(i=0;i<3;i++)
    for(j=0;j<3;j++)
      printf("%d ",p1->e[i][j]);
  printf("\n");
exit (0);
}

int init(a,b,d)
float  a[];
double b[];
float  d[];
{
  int i,j;
  for(i=0;i<100;i++){
      a[i] = sin((double)i);
      b[i] = cos((double)i);
      d[i] = 0 ;
  }
}

int sub1(e)
int e[];
{
  int i;
  struct st2{
    int a[10];
  } t2;
  for(i=0;i<10;i++){
    t2.a[i]=i;
  }
  for(i=0;i<9;i++)
    if (i>=0) e[t2.a[i]] = i;
}

