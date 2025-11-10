#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>
int main() {
  int i;

  printf("trap01 test\n");

  for (i=0; i<4096; i++) {
    if (i==1024) {
      printf("number %d \n",i);
      __builtin_trap();
    }
  }

  printf("test end \n");
}
