
#include <stdio.h>
#include <stdlib.h>
#include <setjmp.h>

jmp_buf jmpbuf1;

void sub(void)
{
  static int a = 0;
  a++;
  if (a > 1000)
    longjmp (jmpbuf1, a);
}

int main() {
  int c;
  int i;
  c = setjmp (jmpbuf1);

  while (!c) {
    sub ();
  }

  if (c == 1001) {
    puts ("OK");
  }
  else {
    puts ("NG");
  }

  return 0;
}
