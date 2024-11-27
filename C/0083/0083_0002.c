#include <stdio.h>
void test0()
{
   int x = 1;
   loop:
	;
	if( x ) goto loop;
}
void test1()
{
   int x = 1;
   for( ;x; ) ;
}
void test2()
{
   int x = 1;
   while( x ) ; 
}
void test3()
{
   int x = 1;
   do {
    ;
   } while (x);
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

