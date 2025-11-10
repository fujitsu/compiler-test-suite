#include <stdio.h>

int Count;

class Class1 {
public:
  Class1() {
    printf("Class1. ctor()\n");
    if (Count == 0)
      printf("throwing 0...\n"), throw 0;
  }
  Class1(const Class1 &) {
    printf("Class1.cctor()\n");
    if (Count == 1)
      printf("throwing 1...\n"), throw 1;
  }
  ~Class1()
#if defined(__cplusplus) && __cplusplus >= 201103L
      noexcept(false)
#endif
  {
    printf("Class1. dtor()\n");
    if (Count == 3)
      printf("throwing 3, skipping to 4...\n"), throw Count++;
    else if (Count == 4)
      printf("destructing safely 4...\n");
    else if (Count == 7)
      printf("destructing safely 7, skipping to 8...\n"), Count++;
    else if (Count == 8)
      printf("throwing 8...\n"), throw 8;
  }
};

class Class2 {
public:
  Class2(const Class1 &) {
    printf("Class2. ctor()\n");
    if (Count == 2)
      printf("throwing 2...\n"), throw 2;
  }
  ~Class2()
#if defined(__cplusplus) && __cplusplus >= 201103L
      noexcept(false)
#endif
  {
    printf("Class2. dtor()\n");
    if (Count == 6)
      printf("throwing 6...\n"), throw 6;
  }
};

int main() {
  for (Count = 0; Count < 10; Count++)
    try {
      Class1 Obj1;
      Class2 Obj2((const Class1)Obj1);
      if (Count == 5)
        printf("throwing 5...\n"), throw 5;
      else if (Count == 9)
        printf("Nothing happening 9...\n");
    } catch (int Para) {
      printf("caught : %d\n", Para);
    }
  return 0;
}
