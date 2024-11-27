#include <stdio.h>
void test0(int x)
{
   if( x ) {
   loop:
	;
	goto loop;
   }
}
void test1(int x)
{
   if( x ) 
   for( ;; ) ;
}
void test2(int x)
{
   if( x ) 
   while( 1 ) ; 
}
void test3(int x)
{
   if( x ) 
   do {
    ;
   } while (1);
}

int x;

int main()
{
  test0(x);
  test1(x);
  test2(x);
  test3(x);

  puts("OK");
}

