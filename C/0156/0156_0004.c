#include <stdio.h>

int check_array(int *a, int *b)
{
  a[0] = 1;
  b[0] = 2;
  a[1] = 3;
  b[1] = 4;
  a[2] = 5;
  b[2] = 6;
  if (a[0] == 1 && b[0] == 2 && a[1] == 3 && b[1] == 4 && a[2] == 5 && b[2] == 6) {
    return 1;
  } else {
    return 0;
  }
}

int main(void) 
{
  int a[3] = {9,9,9};
  if (check_array(a,a) == 1) {
    printf("ok\n");
  } else {
    printf("Compiler couldn't optimize.\n");
  }
  return 0;
}

