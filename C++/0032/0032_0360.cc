









#include <iostream>
using namespace std;

struct A {
  int a;
  int b;
  void func() { b++; }
  A(){ b = 0; }
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

  (aobj.*mp) ++;
  (aobj.*(*mpp)) ++;
  (aobj.*(&A::b)) ++;

  if (aobj.b == 3)
    cout << "ok\n";
  else
    cout << "ng\n";
}

  
  

  
