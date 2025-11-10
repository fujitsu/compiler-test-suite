#include <stdio.h>

class BaseClass {
public:
  BaseClass(int Para1) {
    throw 1;
  }
};

int Count = 0;

class DerivedClass : BaseClass {
public:
  DerivedClass(int Para2)
  try : BaseClass(Para2) {
  } catch (int) {
    Count++;
  }
};
int main() {
  try {
    DerivedClass Obj(3);
  } catch (int) {
    Count++;
  }

  if (2==Count)
    printf("ok\n");
  else
    printf("ng\n");
}


