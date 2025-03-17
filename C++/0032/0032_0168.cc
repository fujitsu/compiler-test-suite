#include <iostream>
using namespace std;

struct A {
  int a;
  int a2;
};

struct B {
  int b;
  int b2;
  B() { b = 10; b2 = 20;}
};
int main()
{
  A aobj;
  B bobj;
  aobj = (A&)bobj;
  if (aobj.a == 10 && ((B&)aobj).b2 == 20)
    cout << "ok\n";
  else
    cout << "ng\n";
}
