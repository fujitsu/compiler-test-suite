

#include <iostream>
using namespace std;

class B {
 public:
  class C {
   static void func(){ cout << "ng\n";}
 };
};
class A {
  public : 
  class B {
    public: 
    class C {
    public:
     static   void func(){cout << "ok\n";}
    }; 
  };
  class D {
    public:
    B::C obj;    
    void f(){
      obj.func();
    }
  };
};
int main(){
  A::D adobj;
  adobj.f();
  return 0;
}
