#include <stdio.h>

int Count;

class Class11 {
public:
  Class11(int Para1) {
    printf("Class11.ctor() : %d\n", Para1);
    if (Count == 0)
      printf("throwing 0...\n"), throw 0;
  }
  ~Class11() { printf("Class11.dtor()\n"); }
};

class Class12 {
public:
  Class12(int Para2) {
    printf("Class12.ctor() : %d\n", Para2);
    if (Count == 1)
      printf("throwing 1...\n"), throw 1;
  }
  ~Class12() { printf("Class12.dtor()\n"); }
};

class Class2 : public Class11, public Class12 {
public:
  Class2() : Class11(10), Class12(20) {
    printf("Class2 .ctor()\n");
    if (Count == 2)
      printf("throwing 2...\n"), throw 2;
  }
  ~Class2() { printf("Class2 .dtor()\n"); }
};
int main() {
  for (Count = 0; Count < 4; Count++)
    try {
      Class2 Obj2;
      if (Count == 3)
        printf("throwing 3...\n"), throw 3;
    } catch (int Para) {
      printf("caught : %d\n", Para);
    }
}
