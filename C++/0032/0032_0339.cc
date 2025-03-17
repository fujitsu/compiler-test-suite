


#include <iostream>
using namespace std;

class A {
 public:
  int a;
  A(){ a = 0; }
  A(int i) { a = i; }
};
int main()
{
  A array[] = {1,2,3};
  A *p = &array[2];
  A aobj = p[-2];

  if (p->a == 3 && aobj.a == 1)
    cout << "ok\n";
  else
    cout << "ng\n";
}
