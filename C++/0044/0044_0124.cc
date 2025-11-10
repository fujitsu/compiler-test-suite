#include <stdio.h>

int Count;

class Class1 {
public:
  Class1() {
    printf("Class1.ctor()\n");
  }
  ~Class1() {
    printf("Class1.dtor()\n");
  }
};

void Func1() {
  Class1 Obj1;
  if (Count==0)
  {
    printf("returning in half 1...\n");
    return;
  }
  else if (Count==1)
  {
    printf("throwing in half 2...\n");
    throw 1;
  }
}
int main() {
  for (Count=0; Count<2; Count++)
    try {
      Func1();
    } catch (int Para1) {
       printf("caught %d\n", Para1);
    }
}
