#include <stdio.h>

int Count = 0;

class Class {
  int m01;
public:
  Class ()                   { printf("Class. ctor() : %d\n", m01=++Count             ); }
  Class (const Class& Para1) { printf("Class.cctor() : %d\n", m01=++Count+10*Para1.m01); }
  ~Class()                   { printf("Class. dtor() : %d\n", m01                     ); }
};

void Func1() {
  printf("Func1 start\n");
  try {
    try {
      printf("throw\n");
      throw Class();
    } catch (Class) {
      printf("catch1\n");
      printf("rethrow\n");
      throw;
    }
  } catch (Class) {
    printf("catch2\n");
  }
  printf("Func1 end\n");
}

void Func2() {
  printf("Func2 start\n");
  try {
    printf("throw2\n");
    throw Class();
  } catch (Class) {
    printf("catch2\n");
    printf("rethrow1\n");
    try {
      throw;
    } catch (Class) {
      printf("catch3\n");
    }
  }
  printf("Func2 end\n");
}
int main() {
  Func1();
  Func2();
}

