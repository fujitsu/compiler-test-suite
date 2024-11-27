#include <stdio.h>
void test0()
{
   loop:
	;
	goto loop;
}
void test1()
{
   for( ;; ) ;
}
void test2()
{
   while( 1 ) ; 
}
void test3()
{
   do {
    ;
   } while (1);
}

int x;

int main()
{
  if( x ) {
    test0();
    test1();
    test2();
    test3();
  }

  puts("OK");
}

