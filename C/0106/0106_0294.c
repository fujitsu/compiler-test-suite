#include <stdio.h>
#include <math.h>
#include<sys/time.h>
double gettimeofday_sec() {
struct timeval tv;
gettimeofday(&tv,NULL);
return tv.tv_sec + (double)tv.tv_usec*1e-6; }
void sub(double *a,double *b,int n) 
{
  int i,j;
  double c[100][100];

  for (j=0;j<n;j++) {
  for (i=0;i<n;i++) {
    c[j][i] = i;
  }
  }

  for (j=0;j<n;j++) {
  for (i=0;i<n;i++) {
    a[i] = b[i] + c[j][i];
  }
  }
}
int main() {
  const int n = 100;
  double a[100];
  double b[100];
  double sum;
  int i;

  for (i=0;i<n;i++) {
    a[i] = i;
    b[i] = i;
  }

  sub(a,b,n);
  sum = 0;
  for (i=0;i<n;i++) {
    sum = sum + a[i];
  }
  printf("a[n-1] = %f\n",a[n-1]);
  printf("sum = %f\n",sum);
}
