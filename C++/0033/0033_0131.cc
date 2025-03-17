#include <stdio.h>
int work = 0;
class A {
public:
  int a;
} aa;

template <class T> A f(T a) {
#if (__EDG__) && (__EDG_VERSION__ < 307)
  work++;
#endif
  return aa;
}

char c;
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
#if (__EDG__) && (__EDG_VERSION__ < 307)
  work++;
#endif
  return aa;
}
