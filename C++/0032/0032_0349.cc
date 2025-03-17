#include <iostream>
using namespace std;

struct A {
  int a;
  int &r;
  A():r(a) { a = 10; }
};
int main()
{
  A aobj;
  A &r = aobj;
  
  r.a += 10;
  r.r += 10;
  if (aobj.a == 30)
    cout << "ok\n";
  else
    cout << "ng\n";
}
