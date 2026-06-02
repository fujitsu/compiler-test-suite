
#include <stdio.h>
#include <omp.h>

int main() {
  long long int i ;
  float s[100] ;
  for (i = 0; i < 10; i++) {
    s[i] = 0.0;
  }
  printf(" OK \n");
  return 0;
}
