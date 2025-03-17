#include <iostream>
using namespace std;

class B {
 public:
  int b;
}bobj;

class A {
 public:
  int a;
  operator char();
  operator signed char();
  operator B(){ cout << "ok\n"; return bobj; }
};
int main()
{
  A aobj;
  (B)aobj;
}
