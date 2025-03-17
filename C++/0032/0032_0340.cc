







#include <iostream>
using namespace std;


class A {
 public:
  int a;
  A(){ a = 0; }
  A(int i){ a = i+1; }
  operator int() { return 10; }

};

class B: public A {
 public:
  int b;
  B(){ b = 0; }
  B(int i){ a = i+1; }
  operator int() { return 10; }
};

int func_ok;
void func(int i) 
{
  if (i == 10)
    func_ok=1; 
  else
    cout << "ng\n";
}

void func2(A aobj) 
{
  if (aobj.a == 2 && func_ok)
    cout << "ok\n"; 
  else
    cout << "ng\n";
}
int main()
{
  A aobj;
  func( aobj );
  func2( 1 );
}
