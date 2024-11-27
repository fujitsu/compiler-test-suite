#include <stdio.h>
#include <stdlib.h>
#include <setjmp.h>

jmp_buf env;

void jmp(int n)
{
   longjmp(env,n);
}
void test0()
{
   loop:
	jmp(1);
	goto loop;
}
void test1()
{
   for( ;; ) jmp(2);
}
void test2()
{
   while( 1 ) jmp(3); 
}
void test3()
{
   do {
    jmp(4);
   } while (1);
}

int main()
{
  if( setjmp(env) ) {
    if( setjmp(env) ) {
      if( setjmp(env) ) {
        if( setjmp(env) ) {
          puts("OK");
          exit(0);
        }
        test3();
      }
      test2();
    }
    test1();
  }
  test0();

  puts("NG");
}

