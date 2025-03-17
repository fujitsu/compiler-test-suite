#include <stdio.h>
#include <math.h>

int main()
{
 long int  a[11],s;
  unsigned long int b[11],s1;
  int i;

  for (i=0;i<11;i++) {
    a[i] = 2;
    b[i] = 3;
  }
  s = 1;
  for (i=0;i<11;i++) {
    s = s * a[i];
  }
  printf("%d \n",s);
  s1 = 1;
  for (i=0;i<11;i++) {
    s1 = s1 * b[i];
  }
  printf("%d \n",s1);
}
