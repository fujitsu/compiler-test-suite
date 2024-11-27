#include <stdio.h>


#define ANS 0
int main()
{
  int a[1];

  a[0] = 0;
  a[0] = a[0];

  if (a[0] == ANS) {
    printf("OK\n");
  } else {
    printf("NG");
  }
}
