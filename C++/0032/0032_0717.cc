#include <stdio.h>

void foo()
{
  throw "exception";
}
int main()
{
  try {
    foo();
  } catch(...) {
    puts("catched");
  }
}
