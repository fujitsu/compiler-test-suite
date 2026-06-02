#include <stdio.h>
#include <math.h>

int main()
{
  double a[22],s;
  volatile double b[22],ss;
  int i;

  for (i=0;i<22;i++) {
    a[i] = i;
    b[i] = i;
  }
  s = 0;
  for (i=0;i<22;i++) {
    if (s < a[i]) {
      s = a[i];
    }
  }
  printf("%f \n",s);
  ss = 0;
  for (i=0;i<22;i++) {
    if (ss < b[i]) {
      ss = b[i];
    }
  }
  printf("%f \n",ss);
}
