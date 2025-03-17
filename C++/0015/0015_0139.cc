extern "C" int printf(const char*, ...);
#include <iostream>
using namespace std;

class B {
  int i;
public:
  void set_i(int n);
  int get_i();
};

class D : public B {
  int j;
public:
  void set_j(int n);
  int mul();
};

void B::set_i(int n)
{
  i = n;
  if (i < 100){
    throw i;
  }
}

int B::get_i()
{
  return i;
}

void D::set_j(int n)
{
  j = n;
  if (j != 100){
    throw j;
  }
}

int D::mul()
{
  return j * get_i();
}

int main()
{
  D ob;

  try{
    try{
      ob.set_i(10);
      ob.set_j(5);
    } catch(int i){
      ob.set_j(4);
    }
  }catch(...){
    cout << ob.mul() <<"\n";
  }

  return 0;
}
