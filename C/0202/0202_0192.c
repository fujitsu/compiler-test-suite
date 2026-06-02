#include <stdio.h>
int main() {
int i;
#pragma omp  sections
{
#pragma omp  section
  for( i=0;i<10;i++) {
    break;
  }
}
    printf("###  OK ###\n");
  return 0;
}
