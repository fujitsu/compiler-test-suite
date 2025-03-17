#include <stdio.h>
#include <setjmp.h>
#include <string.h>
  
struct jmpenv {
  int i;
  jmp_buf  je_buf;
} cur_env; 

struct dummy1 {
  int i;
};

struct dummy {
  int i;
  struct dummy1 aaa;
} d; 
int main()
{
  d.aaa.i = 100;
  if(setjmp(cur_env.je_buf) == 0) {
    printf("if\n");
    longjmp(cur_env.je_buf, 1);
  }

  printf("%d\n", d.aaa.i);

  printf("%d\n", strcmp("__jmp_buf", "__jmp_buf"));
}
