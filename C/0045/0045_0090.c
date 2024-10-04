#include <stdio.h>

void bar();

void foo(const int *p, const int *q)
{
  int i;
  for(i=0;i<(*p+*q);i++) {
    bar();
  }
}

int j;
int main()
{
  int i=10, x=20;
  foo(&i,&x);

  if(j==30) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}

void bar() { j++; }
