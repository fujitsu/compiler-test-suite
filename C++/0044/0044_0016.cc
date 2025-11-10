#include <new>
#include <stdio.h>
#include <stdlib.h>

int Count = 0;

class Class {
  int m01;

public:
  Class() {
    printf("Class.ctor() : %d\n", m01 = ++Count);
    if (2 == m01)
      throw 2;
  }
  ~Class()
#if defined(__cplusplus) && __cplusplus >= 201103L
      noexcept(false)
#endif
  {
    if (4 == m01)
      throw 4;
    printf("Class.dtor() : %d\n", m01);
  }
};

int main() {
  Class *P = (Class *)malloc(3 * sizeof(Class));
  if (P) {
    try {
      Class *P1 = new (P) Class[3];
      if (P1) {
        (P1 + 2)->~Class();
        (P1 + 1)->~Class();
        (P1 + 0)->~Class();
        operator delete(P1, P);
      }
    } catch (...) {
    }
    try {
      Class *P2 = new (P) Class[3];
      if (P2) {
        (P2 + 2)->~Class();
        (P2 + 1)->~Class();
        (P2 + 0)->~Class();
        operator delete(P2, P);
      }
    } catch (...) {
    }
    free(P);
  }
  return 0;
}
