#include <stdio.h>

int sub (int x) {

  if (x % 2 == 1) { goto LABEL1; }

  switch (x) {
  case 0 :
    printf("0\n");
    break;
  case 1 :
  LABEL1:
    printf("OK\n");
    break;
  case 2 :
    printf("2\n");
    break;
  default:
    printf("default\n");
    break;
  }
  return x;
}

int main() {
  sub(3);
}
