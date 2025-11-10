#include <stdio.h>

int Count;

class Class1 {
public:
  Class1() { printf("Class1.ctor()\n"); }
  ~Class1()
#if defined(__cplusplus) && __cplusplus >= 201103L
      noexcept(false)
#endif
  {
    printf("Class1.dtor() starts...\n");
    if (Count == 0)
      printf("  throwing 0, skipping to 1...\n"), throw Count++;
    else if (Count == 2)
      printf("  destructing safely 2, skipping to 3...\n"), Count++;
    else if (Count == 3)
      printf("  throwing 3, skipping to 4...\n"), throw Count++;
    else if (Count == 5)
      printf("  destructing safely 5, skipping to 6...\n"), Count++;
    else if (Count == 6)
      printf("  destructing safely 6, skipping to 7...\n"), Count++;
    else if (Count == 7)
      printf("  throwing 7, skipping to 8...\n"), throw Count++;
    else if (Count == 9)
      printf("  throwing 9, skipping to 10...\n"), throw Count++;
    else if (Count == 11)
      printf("  destructing safely 11, skipping to 12...\n"), Count++;
    else if (Count == 12)
      printf("  throwing 12, skipping to 13...\n"), throw Count++;
    else if (Count == 14)
      printf("  destructing safely 14, skipping to 15...\n"), Count++;
    else if (Count == 15)
      printf("  destructing safely 15, skipping to 16...\n"), Count++;
    else if (Count == 16)
      printf("  throwing 16, skipping to 17...\n"), throw Count++;
    else if (Count == 18)
      printf("  destructing safely 18, skipping to 19...\n"), Count++;
    else if (Count == 19)
      printf("  destructing safely 19, skipping to 20...\n"), Count++;
    else if (Count == 20)
      printf("  destructing safely 20, skipping to 21...\n"), Count++;
    else if (Count == 21)
      printf("  throwing 21, skipping to 22...\n"), throw Count++;
    else if (Count == 22)
      printf(" (should not come here 22...)\n");
    printf("Class1.dtor()       ...ends\n");
  }
};

void Func1() {
  if (Count == 23) {
    printf("Func1().\n");
    printf("  throwing 23...\n"), throw 23;
  }
}

void Func2() {
  Class1 Obj0;
  {
    Class1 Obj1, Obj2;
    try {
      Class1 Obj3;
      if (Count < 9)
        goto LABEL1;
      Func1();
    } catch (int Para1) {
      printf("Func2 : exception caught %d\n", Para1);
    }
    printf("Func2 is ending...\n");
  }
LABEL1:
  return;
}

int main() {
  for (Count = 0; Count < 25; Count++)
    try {
      printf("****** starting : %d ******\n", Count);
      Func2();
    } catch (int Para2) {
      printf("main : exception caught %d\n", Para2);
    }
  return 0;
}
