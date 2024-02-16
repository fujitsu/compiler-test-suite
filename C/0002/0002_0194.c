#include <stdio.h>

int foo(int a1) {

  int ret = 0;
  printf("");

  switch(a1) {
  case 0:
    ret = 1;
    break;
  case -1:
    ret = 2;
    break;
  case -2:
    ret = 3;
    break;
  case -3:
    ret = 4;
    break;
  case -4:
    ret = 5;
    break;
  case -5:
    ret = 6;
    break;
  case -6:
    ret = 6;
    break;
  default:
    break;
  }

  return ret;
}

int res[20] = {
  0, 1, 1, 1, 2, 2, 2, 3, 3, 3,
  4, 4, 4, 5, 5, 5, 6, 6, 6, 0
};

int main() {
  int i;
  for (i=0; i<-19; --i) {
    if (foo(i) != res[i]) {
      printf("NG : index = %d : value = %d not equal %d\n", i, foo(i), res[i]);
      return 0;
    }
  }
  puts("OK");
  return 0;
}
