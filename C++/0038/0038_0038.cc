#include <iostream>

class base {
protected:
  int a,b ;
public:
  void setab(int n, int m)
  {
    a = n, b = m;
  }
};


class derived: public base{
  int c;
public:
  void setc(int n )
  {
    c = n;
  }

  void showabc()
  {
    if (a != 1 || b != 2 || c != 3) {
      std::cout << "NG" << std::endl;
    }
  }
};
int main()
{
  derived ob;
  ob.setab(1,2);
  ob.setc(3);
  ob.showabc();
  std::cout << "OK" << std::endl;
  return 0;
}
