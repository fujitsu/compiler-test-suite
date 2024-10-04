#include <stdio.h>

void bar();

void foo(const int n, const int m)
{
  int i = 0;
  while(i<(n+m)) {
    bar();
    i++;
  }
}

int j;
int main()
{
  foo(10,20);

  if(j==30) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}

void bar() { j++; }
