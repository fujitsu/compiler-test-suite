#include <stdio.h>

int j;

void foo();
int main()
{  
  int i;
  for(i=100;i--;) foo();

  if( j==100 ) puts("OK");
  else         puts("NG");
}

void foo() { j++; }
