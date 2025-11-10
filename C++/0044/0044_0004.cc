#include <stdio.h>

int Count = 0;

class Class {
  int m01;
public:
  Class() {
    printf("Class.ctor() : %d\n", m01=++Count);
  }
  ~Class() {
    printf("Class.dtor() : %d\n", m01        );
  }
};

int Func() {
lab: try {
    Class Obj1;
    if (Count==1)
      throw 1;
    if (Count==3)
      goto lab;
    try {
      Class Obj2;
      if (Count==5)
        throw 1.0;
    } catch (double) {
      Class Obj3;
      goto lab;
    }
    return 100;
  } catch (int) {
    Class Obj4;
    goto lab;
  }
}
int main() {
  if (100==Func())
    printf("ok\n");
}


