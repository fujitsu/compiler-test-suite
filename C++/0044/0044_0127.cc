#include <stdio.h>

int Count;

class Class {
public:
  Class() {
    printf("Class.ctor()\n");
    if (Count == 0)
      printf("  throwing...\n"), throw 1;
  }
  ~Class() { printf("Class.dtor()\n"); }
};

void Func() {
  printf("Func() start : %d.\n", Count);
  static Class Obj;
  printf("Func() end   : %d.\n", Count);
}
int main() {
  for (Count = 0; Count < 3; Count++)
    try {
      Func();
    } catch (int) {
      printf("caught.\n");
    }
}
