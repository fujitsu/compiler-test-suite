#include <stdio.h>

class MyClass {
  int m01;
public:
  MyClass(int Para) {
    printf("MyClass.ctor() : %d\n", m01=Para);
  }
  ~MyClass() {
    printf("MyClass.dtor() : %d\n", m01     );
  }
};

void Func2() {
  throw 1.0;
}

void Func1() {
  MyClass Obj(10);
  Func2();
}
int main() {
  try {
    Func1();
  } catch (double) {
    printf("ok\n");
  } catch (...) {
    printf("ng\n");
  }
}

