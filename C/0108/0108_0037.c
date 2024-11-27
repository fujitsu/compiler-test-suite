
#include <stdio.h>

int sub (int x) {

  switch (x) {
  case 0 :
    printf("0\n");
  case 1 :
    printf("1\n");
    break;
  case 2 :
    printf("2\n");
    break;
  default:
    printf("NG\n");
    break;
  }
  return x;
}

int main() {
  sub(0);
  sub(2);
  sub(2);
  printf("OK\n");
}
