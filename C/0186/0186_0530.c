#include <stdio.h>
#include <math.h>

int main()
{
  double a[11],s,b[11];
  int i;
  
  for (i=0;i<11;i++) {
    a[i] = i+4;
  }
  s = 9;
  for (i=0;i<11;i++) {
    if (s > a[i]) {
      s = a[i];
    }
  }
  printf("%f \n",s);

  b[1] = 100;
  for (i=0;i<11;i++) {
    if (b[1] > a[i]) {
      b[1] = a[i];
    }
  } 
  printf("%f \n",b[1]);
}
