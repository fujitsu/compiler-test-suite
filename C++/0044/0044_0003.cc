#include <stdio.h>

int Count = 0;

class Class {
  int m01;
public:
  Class ()                   { printf("Class. ctor() : %d\n", m01=++Count             ); }
  Class (const Class& Para1) { printf("Class.cctor() : %d\n", m01=++Count+10*Para1.m01); }
  ~Class()                   { printf("Class. dtor() : %d\n", m01                     ); }
};

int Func(const Class Para2)
try {
  throw 1;
} catch (int) {
  throw Para2;
}
int main() {
  Class Obj;
  try {
    Func(Obj);
  } catch (Class) {
    printf("ok\n");
  } catch (int) {
    printf("ng\n");
  }
}

