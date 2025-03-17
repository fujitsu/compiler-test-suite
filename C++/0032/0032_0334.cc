#include <iostream>
using namespace std;

class A {
 public:
  int a;
  A(){ a = 0; }
};
int main()
{
  A aobj;

  aobj.a = 1;
  aobj = A();
  if (aobj.a == 0)
    cout << "ok\n";
  else
    cout << "ng\n";
}
