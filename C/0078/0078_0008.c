#include <stdio.h>
int foo()
{
}

int x = 0;
int main()
{
   if( x ) {
      foo();
   }

   printf(" OK \n");
}
