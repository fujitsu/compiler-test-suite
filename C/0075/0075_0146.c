#include <stdio.h>
void bzip2_bug(int x, int *a, int *ptr)
{
  int i;
  int y = a[1];
  int k = 0;
  int w[5];
  
  w[0] = 1;
  w[1] = 2;
  w[2] = 1;
  w[3] = 2;
  w[4] = 1;

  for (i=x; i>w[y]; i--) {
    k = k + a[i];
    if (k == 1) {
      ptr[w[1]--] = k;
    }
  }
}
int main() 
{
  int a[5], ptr[5];

  a[0] = 0;
  a[1] = 1;
  a[2] = 0;
  a[3] = 1;
  a[4] = 0;

  ptr[0] = 4;
  ptr[1] = 5;
  ptr[2] = 6;
  ptr[3] = 7;
  ptr[4] = 8;
  
  bzip2_bug(4,a,ptr);

  if (ptr[1] == 1) {
    printf("ok\n");
  } else {
    printf("ng: ptr[1] != 1\n", ptr[1]);
  }
}
