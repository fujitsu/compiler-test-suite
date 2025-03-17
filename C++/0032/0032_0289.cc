

#include <iostream>
using namespace std;

int i=0;
class A {
 public:
  class B {
   public:
    static void func(){ i++;}
  };
  class B2 {
    public:
    B obj;
  };
};
class D {
 public: 
 void f(){
   A::B::func();
 }
};
int main(){
  A::B2 obj2;
  obj2.obj.func();
  A::B::func();
  if (i==2) cout << "ok\n";
  else cout << "ng\n";
  return 0;
}
