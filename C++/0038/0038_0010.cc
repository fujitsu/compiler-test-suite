#include <iostream>

class B {
  int i;
public:
  void set_i(int);
  int get_i();
};

class D : public B{
  int j;
public:
  void set_j(int);
  int mul();
};

void B::set_i(int n)
{
  i = n;
}

int B::get_i()
{
  return i;
}

void D::set_j(int n)
{
  j = n;
}

int D::mul()
{
  return j * get_i();
}

int main(){
  D ob;
  ob.set_i(10);
  ob.set_j(4);

  if (ob.mul() == 40) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  return 0;
}
