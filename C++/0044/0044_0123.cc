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
  Class1 Obj11;
  if (Count==0)
  {
    printf("throwing 0...\n");
    throw 0;
  }
  else if (Count==1)
  {
    Class1 Obj21;
    Class1 Obj22;
    printf("throwing 1...\n");
    throw 1;
  }
  else if (Count==2)
  {
    printf("throwing 2...\n");
    throw 2;
  }
}
int main() {
  for (Count=0; Count<3; Count++)
    try {
      Func1();
    } catch (int Para1) {
       printf("caught %d\n", Para1);
    }
}
