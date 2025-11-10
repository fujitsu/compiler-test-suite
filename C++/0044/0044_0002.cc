#include <stdio.h>

int Count = 0;

class BaseClass1 {
  int m01;
public:
  BaseClass1 () { printf("BaseClass1.ctor() : %d\n", m01=++Count);          }
  ~BaseClass1() { printf("BaseClass1.dtor() : %d\n", m01        );          }
};

class BaseClass2 {
  int m02;
public:
  BaseClass2 () { printf("BaseClass2.ctor() : %d\n", m02=++Count); throw 1; }
  ~BaseClass2() { printf("BaseClass2.dtor() : %d\n", m02        );          }
};

class DerivedClass : BaseClass1, BaseClass2 {
public:
  DerivedClass()
  try : BaseClass1(), BaseClass2() {
  } catch (int) {
    Count++;
  }
};
int main() {
  try {
    DerivedClass Obj;
  } catch (int) {
    printf("ok\n");
  }
}


