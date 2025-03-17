







#include <iostream>
#include <stdlib.h>

using namespace std;

struct A {
  int a;
  A(){}
  A(A& r){ cout << "ng\n"; exit(0); }
};

void func(...){}
int main()
{
  A aobj;
  cout << "ok\n";
}
