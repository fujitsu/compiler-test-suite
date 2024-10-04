

#include <stdio.h>

int j;

void foo(int i)
{
  label:
       j++;
       i--;
       if( i!=0 ) goto label;
}
int main()
{
  foo(10);

  if (j==10) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
