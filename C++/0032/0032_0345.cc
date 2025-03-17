







#include <iostream>
using namespace std;

int x;

struct A {
  int a;
  A(){ a = 0; }
  A(int i){ a = i; }
  A(A &r){ a = r.a+10; }
};

int func(A aobj)
{ 
  if (aobj.a == 11) 
    return 1;
  else
    return 0;
}
int main()
{
  A aobj(1);

  if (func(aobj) == 1)
    cout << "ok\n";
  else
    cout << "ng\n";
}
