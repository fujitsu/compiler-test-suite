#include <stdio.h>

 

int j;

void bar();

void foo()
{
  char *p;
  for(p=0;p<(void *)10;p++) {
    bar();
  }
}
int main()
{
  foo();

  if (j==10) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}

void bar() { j++; }

