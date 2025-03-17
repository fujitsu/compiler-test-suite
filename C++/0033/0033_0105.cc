#include <assert.h>

#include <stdio.h>
int main() {
  puts("ok");
#pragma omp parallel
  assert(1);
}
