#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub1 (int e[]);
int init (float a[], double b[], float d[]);

int main (void)
{
  int i,j,*p,k=1,e[3][3],m,l;
  float  a[10][10];
  double b[10][10];
  int    c[10]={1,0,0,1,1,1,0,1,0,1};
  float  d[10][10];
  init(a,b,d) ;
  for(i=0;i<3;i++)
    for(j=0;j<3;j++)
      e[i][j]=i;
  p=&e[0][0];
  for(i=0;i<10;i++)
  {
    if (sin((double)c[i]))
      for(j=0;j<10;j++)
        d[i][j] = a[i][j] * ((i%2)+1)  ;
    else
      for(j=0;j<10;j++)
      {
        d[i][j] = b[i][j] / ((i%3)+1)  ;
        for(l=0;l<3;l++)
          for(m=0;m<3;m++)
            *(p+3*l+m) = l + m ;
      }
  }
  for(i=0;i<10;i+=2)
    for(j=0;j<10;j+=5)
      printf("%f \n",d[i][j]);

  for(i=0;i<3;i++)
    for(j=0;j<3;j++)
      printf("%d ",e[i][j]);
  printf("\n");

  sub1(e);

  for(i=0;i<3;i++)
    for(j=0;j<3;j++)
      printf("%d ",e[i][j]);
  printf("\n");
exit (0);
}

int init (float a[], double b[], float d[])
{
  int i,j;
  for(i=0;i<100;i++){
      a[i] = sin((double)i);
      b[i] = cos((double)i);
      d[i] = 0 ;
  }
}

int sub1 (int e[])
{
  int i,a[10]={0,1,2,3,4,5,6,7,8,9};
  for(i=0;i<9;i++)
    if (i>=0) e[a[i]] = i;
}
