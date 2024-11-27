#include <stdio.h>

int x[100];

int main()
{
  int i;
#pragma clang loop unroll_count(3)
  for(i=0;i<100;i++) {
    x[i] = i;
  }

  if(x[50] == 50) {
    puts("OK");
  } else {
    puts("NG");
  }
}
