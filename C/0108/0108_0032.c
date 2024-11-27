
#include <stdio.h>
#include <stdlib.h>
#include <setjmp.h>

jmp_buf jmpbuf1;

void sub(void)
{
  static int a = 0;
  a++;
  longjmp(jmpbuf1, a);
  puts ("NG");  
}

int main() {
  int c;
  c = setjmp(jmpbuf1);
  if (c < 100) {
    sub ();
    puts ("NG");
    exit (1);
    puts ("NG");
  } else {
    if (c == 100)
      puts("OK");
  }
  return 0;
}
