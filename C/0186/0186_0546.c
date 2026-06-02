#include <stdio.h>
#include <math.h>

int main()
{
  double a[22],s;
  volatile double b[22],ss;
  int i;

  for (i=0;i<11;i++) {
    a[i] = i+1;
    b[i] = i+1;
  }
  for (i=11;i<22;i++) {
    a[i] = 2;
    b[i] = 2;
  }
  s = 1;
  for (i=0;i<22;i++) {
    s = s * a[i];
  }
  printf("%f \n",s);
  ss = 1;
  for (i=0;i<22;i++) {
    ss = ss * b[i];
  }
  printf("%f \n",ss);
}
