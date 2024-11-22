
#include <stdio.h>
#include <math.h>
#include<sys/time.h>
double gettimeofday_sec() {
struct timeval tv;
gettimeofday(&tv,NULL);
return tv.tv_sec + (double)tv.tv_usec*1e-6; }
void sub(double *a,double *b,int n) {
  int i,m;

  m = 0;
  for (i=0;i<n;i++) {
    a[m] = cbrt(b[i]);
    m = m + 1;
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