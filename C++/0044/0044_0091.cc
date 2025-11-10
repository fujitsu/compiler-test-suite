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

void Func() {
  MyClass Obj(10);
  throw 1.0;
}
int main() {
  try {
    Func();
  } catch (double) {
    printf("ok\n");
  } catch (...) {
    printf("ng\n");
  }
}

