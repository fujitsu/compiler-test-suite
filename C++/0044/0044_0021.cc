#include <stdio.h>

int Count = 0;

class Class {
  int m01;
public:
  Class() {
    printf("Class.ctor()  : %d\n", m01=++Count            );
  }
  Class(const Class& Para) {
    printf("Class.cctor() : %d\n", m01=++Count+10*Para.m01);
  }
  ~Class() {
    printf("Class.dtor()  : %d\n", m01                    );
  }
};

void Func() {
  try {
    throw Class();
  } catch (Class) {
    try {
      throw Class();
    } catch (Class) {
      if (Count)
        throw 1;
    }
  }
}
int main() {
  try {
    Func();
  } catch (int) {
  }
}

