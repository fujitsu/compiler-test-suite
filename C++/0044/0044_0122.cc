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

void Func2(int);

void Func1() {
  Class1 Obj1;
  if (Count==0)
  {
    Class1 Obj2;
    Func2(0);
  }
  else if (Count==1)
  {
    Class1 Obj3;
    printf("throwing 1...\n");
    throw 1;
  }
  else if (Count==2)
  {
    Class1 Obj4;
    {
      Class1 Obj5;
      Func2(2);
    }
  }
  else if (Count==3)
  {
    Class1 Obj6;
    {
      Class1 Obj7;
      printf("throwing 3...\n");
      throw 3;
    }
  }
  else if (Count==4)
  {
    printf("throwing 4...\n");
    throw 4;
  }
  else if (Count==5)
  {
    printf("nothing happends...\n");
  }
}
int main() {
  for (Count=0; Count<6; Count++)
    try {
      Func1();
    } catch (int Para1) {
       printf("caught %d\n", Para1);
    }
}

void Func2(int Para2) {
  if (Para2==Count)
    printf("throwing %d...\n", Count), throw Count;
}
