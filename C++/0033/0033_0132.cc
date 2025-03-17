#include <stdio.h>
class A {
public:
  int a;
} aa;
class B {
public:
  int a;
} bb;
template <class T> B f(T a) { return bb; }

char c;
int work = 0;
int main() {
#pragma omp parallel
  f(c);
  if (!work)
    printf("ok\n");
  else
    printf("ng\n");
}

A f(char a) {
#pragma omp parallel
#pragma omp atomic
  work++;
  return aa;
}
