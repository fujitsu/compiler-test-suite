#include <stdio.h>

#pragma weak foo=bar

void bar()
{
   puts("OK");
}

int main()
{
  foo();
}

