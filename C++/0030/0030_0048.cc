#include <stdio.h>
#include <math.h>

int main()
{
  char a[11],s;
  unsigned char b[11],s1;
  int i;
  for (i=0;i<11;i++) {
    a[i] = i;
    b[i] = i;
  }
  s = 0;
  for (i=0;i<11;i++) {
    s = s + a[i];
  }
  printf("%d \n",s);
  s1 = 0;
  for (i=0;i<11;i++) {
    s1 = s1 + b[i];
  }
  printf("%d \n",s1);
}
