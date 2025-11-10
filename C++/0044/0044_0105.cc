#include <stdio.h>

int Count=0;

class MyClass {
  int m01;
public:
  MyClass() {
    printf("MyClass. ctor() : %d\n", m01=++Count            );
  }
  MyClass(const MyClass& Para) {
    printf("MyClass.cctor() : %d\n", m01=++Count+10*Para.m01);
  }
  ~MyClass() {
    printf("MyClass. dtor() : %d\n", m01                    );
  }
};

void Func2() {
  MyClass Obj;
  throw Obj;
}

void Func1() {
  try {
    Func2();
  } catch (MyClass) {
    printf("ok 1\n");
    throw;
  } catch (...) {
    printf("ng 1\n");
    throw;
  }
}
int main() {
  try {
    Func1();
  } catch (MyClass) {
    printf("ok 2\n");
  } catch (...) {
    printf("ng 2\n");
  }
}

