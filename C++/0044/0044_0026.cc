#include <stdio.h>

int Count = 0;

class BaseClass {
  int m01;
public:
  BaseClass()                      { printf("BaseClass. ctor() : %d\n", m01=++Count            ); }
  BaseClass(const BaseClass& Para) { printf("BaseClass.cctor() : %d\n", m01=++Count+10*Para.m01); }
  ~BaseClass()                     { printf("BaseClass. dtor() : %d\n", m01                    ); }
};

class DerivedClass : public BaseClass {
} Obj;
int main() {
  try {
    throw Obj;
  } catch (BaseClass) {
  }
}

