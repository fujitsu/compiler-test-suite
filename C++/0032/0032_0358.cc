







#include <iostream>
using namespace std;

struct A {
  int a;
  int b;
};

typedef int A::*MP;
int main()
{
  int i = 0;
  int &r = i;
  MP mp = &A::b;
  MP *mpp = &mp;
  A aobj;
  A &ra = aobj;

  aobj.a = 1;
  aobj.b = 2;

  aobj.*mp += 1;
  aobj.*(*mpp) += 1;

  *mpp = &A::a;
  aobj.*mp += 1;
  aobj.*(*mpp) += 1;

  if ( aobj.b == 4 && aobj.a == 3)
    cout << "ok\n";
  else
    cout << "ng\n";
}

  
  

  
