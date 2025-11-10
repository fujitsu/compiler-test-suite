#include <stdio.h>

int Count;

class Class1 {
public:
  Class1(int Para1) {
    printf("Class1.ctor() : %d\n", Para1);
    if (Count == 0)
      printf("throwing 0...\n"), throw 0;
  }
  ~Class1() { printf("Class1.dtor()\n"); }
};

class Class2 {
  Class1 Field1;

public:
  Class2() : Field1(10) {
    printf("Class2.ctor()\n");
    if (Count == 1)
      printf("throwing 1...\n"), throw 1;
  }
  ~Class2() { printf("Class2.dtor()\n"); }
};
int main() {
  for (Count = 0; Count < 3; Count++)
    try {
      Class2 Obj2;
      if (Count == 2)
        printf("throwing 2...\n"), throw 2;
    } catch (int Para) {
      printf("caught : %d\n", Para);
    }
}
