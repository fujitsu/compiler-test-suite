#include <stdio.h>

int Count;

class Class1 {
public:
  Class1(int Para1) {
    printf("Class1.ctor() : %d\n", Para1);
    if (Count == 0)
      printf("throwing 1...\n"), throw 1;
    else if (Count == 1)
      printf("constructing safely 1, skipping to 2...\n"), Count++;
    else if (Count == 2)
      printf("throwing 2...\n"), throw 2;
  }
  ~Class1() { printf("Class1.dtor()\n"); }
};

class Class2 {
  Class1 Field1;
  Class1 Field2;

public:
  Class2() : Field1(10), Field2(20) {
    printf("Class2.ctor()\n");
    if (Count == 3)
      printf("throwing 3...\n"), throw 3;
  }
  ~Class2() { printf("Class2.dtor()\n"); }
};
int main() {
  for (Count = 0; Count < 5; Count++)
    try {
      Class2 Obj2;
      if (Count == 4)
        printf("throwing 4...\n"), throw 4;
    } catch (int Para) {
      printf("caught : %d\n", Para);
    }
}
