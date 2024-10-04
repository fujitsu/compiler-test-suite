

#include <stdio.h>

int j = 0;
int n ;

void bar();

void sub()
{
  int i;
  n = 10;
  for(i=0;i <n;i++) {
    j++;
    bar();
  }
}
int main()
{

  sub();

  if (j==2) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
  
}

void bar() { n = 2; }
