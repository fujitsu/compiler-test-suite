#include <stdio.h>
#include <stdlib.h>
#include <setjmp.h>

jmp_buf jmpbuf1;

void xxx(void)
{
  int c;

  c = setjmp(jmpbuf1);
  if (c == 100)
    {
      puts ("OK");
      exit(1);
    }
  longjmp (jmpbuf1, 100);  
  puts("NG");
}

void sub (int x) {
  puts("NG");
  return ;
}

int main() {
  xxx ();
  sub (10);
} 

