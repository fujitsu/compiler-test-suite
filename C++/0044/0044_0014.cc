#include <new>
#include <stdio.h>

int GI;

class Class {
  int m01;

public:
  Class(int Para1) {
    printf("Class.ctor()  : %d\n", m01 = Para1);
    printf("  throwing...   %d\n", Para1);
    throw Para1;
  }
  ~Class() { printf("Class.dtor()  : %d\n", m01); }
  void hello() { printf("Class.hello() : %d\n", m01); }
  void *operator new(size_t size) { return &GI; }
  void operator delete(void *) { printf("delete operator called...\n"); }
};

void Func() {
  Class *P1;
  P1 = new Class(10);
  P1->hello();
  delete P1;
}
int main() {
  try {
    Func();
  } catch (int Para2) {
    printf("exception caught : %d\n", Para2);
  }
}
