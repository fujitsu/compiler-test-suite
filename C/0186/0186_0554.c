#include <stdio.h>
#include <math.h>

int main()
{
  double a[11],s,b[11];
  int i;
  
  for (i=0;i<11;i++) {
    a[i] = i;
  }

  s = 0;
  for (i=0;i<11;i++) {
    s = s + a[i];
  }
  printf("%f \n",s);

  b[1] = 0;
  for (i=0;i<11;i++) {
    b[1] = b[1] + a[i];
  } 
  printf("%f \n",b[1]);
}
