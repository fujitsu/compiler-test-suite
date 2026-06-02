#include <stdio.h>
int main() {
  int i;
#pragma omp parallel
{
  for(i = 0; i < 10; i++ ) {
    goto label_1;
  } label_1:;
}
  printf("###  OK ###\n");
  return 0;
}
