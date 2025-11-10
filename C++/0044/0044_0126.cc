#include <stdio.h>

int Count;

class Class1 {
public:
  Class1() {
    printf("Class1. ctor()\n");
    if (Count == 0)
      printf("  throwing 0...\n"), throw 0;
  }
  Class1(const Class1 &) {
    printf("Class1.cctor()\n");
    if (Count == 1)
      printf("  throwing 1...\n"), throw 1;
    else if (Count == 3)
      printf("  constructing safely 3, skipping to 4...\n"), Count++;
    else if (Count == 4)
      printf("  throwing 4...\n"), throw 4;
  }
  ~Class1()
#if defined(__cplusplus) && __cplusplus >= 201103L
      noexcept(false)
#endif
  {
    printf("Class1. dtor()\n");
    if (Count == 1)
      printf("  destructing safely 1, skipping to 2...\n"), Count++;
    else if (Count == 2)
      printf("  (should not come here 2...)\n");

    else if (Count == 4)
      printf("  destructing safely 4, skipping to 5...\n"), Count++;
    else if (Count == 5)
      printf("  destructing safely 5, skipping to 6...\n"), Count++;
    else if (Count == 6)
      printf("  (should not come here 6...)\n");

    else if (Count == 7)
      printf("  throwing 7, skipping to 8...\n"), throw Count++;
    else if (Count == 8)
      printf("  destructing safely 8, skipping to 9...\n"), Count++;
    else if (Count == 9)
      printf("  destructing safely 9, skipping to 10...\n"), Count++;
    else if (Count == 10)
      printf("  (should not come here 10...)\n");
    else if (Count == 11)
      printf("  destructing safely 11, skipping to 12...\n"), Count++;
    else if (Count == 12)
      printf("  throwing 12, skipping to 13...\n"), throw Count++;
    else if (Count == 13)
      printf("  destructing safely 13, skipping to 14...\n"), Count++;
    else if (Count == 14)
      printf("  (should not come here 14...)\n");
  }
};

void Func1(const Class1 &, const Class1 &) { printf("Func1()\n"); }

int main() {
  for (Count = 0; Count < 16; Count++)
    try {
      Class1 Obj1;
      Func1((const Class1)Obj1, (const Class1)Obj1);
      if (Count == 15)
        printf("throwing 15...\n"), throw 15;
    } catch (int Para) {
      printf("caught : %d\n", Para);
    }
  return 0;
}
