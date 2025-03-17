#include <iostream>
using namespace std;

class A {
public:
   void f() const { cout << "ng \n";  }
  static void f(const A*){ cout << "ok\n"; }
 }x;

class B {
 public:
  void bf();
};
void B::bf(){
  A::f(&x);     
}  
int main()
{
  B bobj;

  bobj.bf();
}
