#include <iostream>

class myclass {
  int a;
public:
  myclass(int);

  int get()
  {
    return a;
  }
};

myclass::myclass(int n)
{
  a = n; 
}

int main()
{
  myclass ob(120);
  myclass *p;
  p = &ob;
  
  if (ob.get() != 120) {
    std::cout << "NG" << std::endl;
  }

  if (p->get() != 120) {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;

  return 0;
}
