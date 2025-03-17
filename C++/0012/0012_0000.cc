#include <omp.h>
#include <stdio.h>

class Class1 {
public:
  Class1() {
#pragma omp parallel
    {}
  }
} Obj1;
int main() { printf("ok\n"); }
