



#include <iostream>
using namespace std;

struct B {
  int b1;
  int b2;
  void bfunc(){}
  void bfunc2(){}
};

struct D : B {
  int d1;
  int d2;
  void dfunc(){}
};

int main()
{
  int B::*bmp = 0;
  void (B::*bmpf)() = &B::bfunc;
  int D::*dmp = &D::d1;
  void (D::*dmpf)() = &D::dfunc;
  int t1,t2,t3,t4;

  t1 = bmp == 0;
  bmp = &B::b1;
  t2 = bmp == &B::b1;
  t3 = bmpf == &B::bfunc;
  
  if (t1 && t2 && t3)
    cout << "ok\n";
  else
    cout << "ng\n";
}

  
