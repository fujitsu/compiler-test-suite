#include <stdio.h>
int foo() {
   return *(int *)0;
}
int main()
{
   puts("OK");
}
