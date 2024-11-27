#include <stdio.h>

void foo(int *k) {
  int i;
  if (k > &i) {
    printf("ok\n");
  } else {
    printf("ng\n");
  }
#ifdef PRINT_ADDRESS
  printf("%p\n", k);
  printf("%p\n", &i);
#endif
}

int main(void) {
  int i;
  i = 2;
  foo(&i);
}
