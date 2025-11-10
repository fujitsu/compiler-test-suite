#include <stdio.h>

int Flg = 1;

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
  if (Flg)
    throw 1.0;
}

void Func1() {
  try {
    MyClass Obj(10);
    Func2();
  } catch (int) {
    printf("ng1\n");
  } catch (MyClass) {
    printf("ng2\n");
  }
}
int main() {
  try {
    Func1();
  } catch (double) {
    printf("ok\n");
  }
}

