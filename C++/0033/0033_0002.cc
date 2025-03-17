#include <stdio.h>
class T {};
extern "C++" class C;
T x;

extern "C" struct S;
T xx;

extern "C" struct S {};
T xxx;

extern "C" {
class D {};
}
T xxxx;
int main() {

#pragma omp parallel
  {
#pragma omp master
    printf("ok\n");
  }
  return 0;
}
