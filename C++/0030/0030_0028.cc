#include <stdio.h>
#include <math.h>

int main()
{
  int  a[11],s;
  unsigned int b[11],s1;
  int i;
  for (i=0;i<11;i++) {
    a[i] = i;
    b[i] = i;
  }
  s = 0;
  for (i=0;i<11;i++) {
    if (s < a[i]) {
      s = a[i];
    }
  }
  printf("%d \n",s);
  s1 = 0;
  for (i=0;i<11;i++) {
    if (s1 < b[i]) {
      s1 = a[i];
    }
  }
  printf("%d \n",s1);
}
