#include <stdio.h>
#include <math.h>

int main()
{
  float a[11],s;
  int i;
  for (i=0;i<11;i++) {
    a[i] = i;
  }
  s = 3;
  for (i=0;i<11;i++) {
    if (s > a[i]) {
      s = a[i];
    }
  }
  printf("%f \n",s);
}
