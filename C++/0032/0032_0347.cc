






#include <iostream>
using namespace std;

int x;
struct A {
  int a;
  A(){ a = 0; }
  A(int i){ a = i; }
  int operator =(A &r){ a += r.a; return 1;}
}aobj(10);
  
A &func()
{
  return aobj;
}
int main()
{
  A aaa(1);

  func() = aaa;
  if (aobj.a == 11)
    cout << "ok\n";
  else
    cout << "ng\n";
}
