

#include <stdio.h>

int j;
int n;

void foo(void)
{
  int i;
  i=0;
  while(i<=9) {
    i+=1;
    j++;
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
