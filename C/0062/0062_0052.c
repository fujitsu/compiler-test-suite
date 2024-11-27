
#include <stdio.h>
#include <math.h>

int main()
{
  double a[20],b[20];
  int i,j,n,m;

  n=20;
  m=3;

  for (i=0;i<n;i++){
    a[i] = i;
    b[i] = i;
  }
  for (j=0;j<m;j++){
    for (i=0;i<n-5;i+=5){
      a[i]   = a[i+1] * a[i];
      a[i+1] = a[i+2] * a[i+1];
      a[i+2] = a[i+3] * a[i+2];
      a[i+3] = a[i+4] * a[i+3];
      a[i+4] = a[i+5] * a[i+4];
    }
  }
  for (i=0;i<20;i++){
    printf("  a[%d] ==>",i);
    printf(" %f \n",a[i]);
  }
}
