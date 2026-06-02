#include <stdio.h>
#include <math.h>

int main()
{
 long int  a[11],s;
  unsigned long int b[11],s1;
  int i;

  for (i=0;i<11;i++) {
    a[i] = i;
    b[i] = i;
  }
  s = 10;
  for (i=0;i<11;i++) {
    if (s > a[i]) {
      s = a[i];
    }
  }
  printf("%d \n",s);
  s1 = 2;
  for (i=0;i<11;i++) {
    if (s1 > b[i]) {
      s1 = b[i];
    }
  }
  printf("%d \n",s1);
}
