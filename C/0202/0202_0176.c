#include <stdio.h>

void foo() {
  int i;
#pragma omp parallel
  for( i = 0; i < 10; i++ ) {
    if (i == 5 ) break;
    break;
  }
  printf(" ok\n");
}


int main()
{
  printf("###  OK ###\n");
  return 0;
}
