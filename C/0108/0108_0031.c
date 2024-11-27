#include <stdio.h>
#include <setjmp.h>

jmp_buf jmpbuf1;

void sub(void)
{
  printf("sub start\n");
  longjmp(jmpbuf1, 123);
  printf("sub end\n");
}

int main() {
  int c;

  printf("main start\n");
  c = setjmp(jmpbuf1);
  if (c == 0) {
    sub();
  } else {
    printf("jump: %d\n", c);
  }
  printf("main end\n");

  return 0;
}
