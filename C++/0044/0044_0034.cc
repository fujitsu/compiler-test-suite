#include <stdio.h>

int Count = 0;

class Class {
  int m01;
public:
  Class ()                   { printf("Class. ctor() : %d\n", m01=++Count             ); }
  Class (const Class& Para1) { printf("Class.cctor() : %d\n", m01=++Count+10*Para1.m01); }
  ~Class()                   { printf("Class. dtor() : %d\n", m01                     ); }
};
int main() {
  try {
    printf("throw1\n");
    throw Class();
  } catch (Class) {
    printf("catch1\n");
    try {
      printf("throw2\n");
      throw Class();
    } catch (Class) {
      printf("catch2\n");
    }
    try {
      printf("rethrow1\n");
      throw;
    } catch (Class) {
      printf("catch3\n");
    }
  }
}

