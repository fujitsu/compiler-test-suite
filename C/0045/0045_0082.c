#include <stdio.h>

 

int j;
int i;

void bar();

void foo()
{
  unsigned u;
  for(u=0;u<i;u++) {
    bar();
  }
}
int main()
{
  i = 10;
  
  foo();

  if (j==10) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}

void bar() { j++; }

