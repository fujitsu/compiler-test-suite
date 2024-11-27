
#include <stdio.h>
#include <math.h>

int main()
{
  double a[20],b[20];
  int i,j,n,m;

  n=20;
  m=5;

  for (i=0;i<n;i++){
    a[i] = i;
    b[i] = i;
  }
  for (j=0;j<m;j++){
    for (i=n-2;i>=0;i--){
      a[i+1] = a[i] + b[i];
    }
  }
  for (i=0;i<20;i++){
    printf("  a[%d] ==>",i);
    printf(" %f \n",a[i]);
  }
}
