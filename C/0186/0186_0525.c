#include <stdio.h>
#include <math.h>

int main()
{
  short int a[11],s;
  unsigned   short int b[11],s1;
  int i;

  for (i=0;i<11;i++) {
    a[i] = i;
    b[i] = i;
  }
  s = 3;
  for (i=0;i<11;i++) {
    if (s > a[i]) {
      s = a[i];
    }
  }
  printf("%d \n",s);
  s1 = 11;
  for (i=0;i<11;i++) {
    if (s1 > b[i]) {
      s1 = b[i];
    }
  }
  printf("%d \n",s1);
}
