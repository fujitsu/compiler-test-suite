#include <math.h>
#include <stdio.h>
int sub3 (int iii4b);
int sub2 (int jj, int ll, int nn, int ii4b, double rr4b, double rr8b);
int sub1 (int ii4a, double rr4a, double rr8a);
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
    }

  for(i=0;i<10;i++)
    {
      sub1(i4a[i],r4a[i],r8a[i]);
    }

  for(i=0;i<10;i+=5)
    printf("%d %d %d %d %d \n",
	   i4a[i],i4a[i+1],i4a[i+2],i4a[i+3],i4a[i+4]);
  
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4a[i],r4a[i+1],r4a[i+2],r4a[i+3],r4a[i+4]);
  
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8a[i],r8a[i+1],r8a[i+2],r8a[i+3],r8a[i+4]);
  printf("\n");

  nn = 10;
  ll = 0;
  for(i=0;i<10;i++)
    {
      sub2(i,0,10,i4b[i],r4b[i],r8b[i]);
    }

  for(i=0;i<10;i+=5)
    printf("%d %d %d %d %d \n",
	   i4b[i],i4b[i+1],i4b[i+2],i4b[i+3],i4b[i+4]);
  
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r4b[i],r4b[i+1],r4b[i+2],r4b[i+3],r4b[i+4]);
  
  for(i=0;i<10;i+=5)
    printf("%f %f %f %f %f \n",
	   r8b[i],r8b[i+1],r8b[i+2],r8b[i+3],r8b[i+4]);
}

int 
sub1 (int ii4a, double rr4a, double rr8a)
{
  ii4a = pow(ii4a,ii4a);
  rr4a = pow(rr4a,2);
  rr8a = sin(rr8a);
}

int 
sub2 (int jj, int ll, int nn, int ii4b, double rr4b, double rr8b)
{
  int ii;
  for(ii=0;ii<10;ii++)
    sub3(ii4b);

  rr4b = sqrt(rr4b);
  rr8b = exp(rr8b);
}

int 
sub3 (int iii4b)
{
  iii4b = iii4b + 1;
}

