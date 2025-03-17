#include <stdio.h>
#include <math.h>

int main()
{
  float a[11],s;
  int i;
  for (i=0;i<11;i++) {
    a[i] = i+1;
  }
  s = 1;
  for (i=0;i<11;i++) {
    s = s * a[i];
  }
  printf("%f \n",s);
}
