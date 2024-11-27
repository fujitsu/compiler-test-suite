#include <stdio.h>


#define ANS 1
int main()
{
  int a[2];

  a[0] = 0;
  a[1] = 1;
  
  
  *a = *(a+1);

  if (a[0] == ANS) {
    printf("OK\n");
  } else {
    printf("NG");
  }
}
