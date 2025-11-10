#include <stdio.h>

class MyClass {
public:
  int m01;
  MyClass(int Para) {
    printf("MyClass.ctor() : %d\n", m01=Para       );
  }
  MyClass(const MyClass& Para) {
    printf("MyClass.ctor() : %d\n", m01=Para.m01*10);
  }
  ~MyClass() {
    printf("MyClass.dtor() : %d\n", m01            );
  }
};

void Func() {
  throw MyClass(10);
}
int main() {
  try {
    Func();
  } catch (MyClass Var) {
    printf("ok : %d\n", Var.m01);
  } catch (...) {
    printf("ng\n");
  }
}

