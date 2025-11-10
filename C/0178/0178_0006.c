#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>

int func( int i) {
  if (i!=1024) {}
   else{
    printf("number %d \n",i);
    __builtin_trap();
  }
}
int main() {
  int i;

  printf("trap02 test\n");

  for (i=0; i<4096; i++) {
    func(i);
  }

  printf("test end \n");
}
