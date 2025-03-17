#include <iostream>
using namespace std;

class A {
 public:
  static int a;

  class AA {
  public:
            void f3(char){}
static      void f3(){ A::a++; }
            void f3(int){}
  };

  void func() {
  A::AA::f3();
     AA::f3();
  }
};

int A::a=0;
int main()
{
  A aobj;

  aobj.func();
  if (A::a == 2)
    cout << "ok\n";
  else
    cout << "ng\n";

}

