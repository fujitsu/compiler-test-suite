#include <stdio.h>


#define ANS 1
int main()
{
  int a[1],b[1];

  a[0] = 0;
  b[0] = 1;
  
  
  *a = *b;

  if (a[0] == ANS) {
    printf("OK\n");
  } else {
    printf("NG");
  }
}
