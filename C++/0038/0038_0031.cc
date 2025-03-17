#include <iostream>

class samp {
  int a,b;
public:
  samp(int m,int n)
  {
    a = m, b = n;
  }

  int get_a()
  {
    return a;
  }

  int get_b()
  {
    return b;
  }
};


int main()
{
  samp ob[4] = {
    samp(1,2),
    samp(3,4),
    samp(5,6),
    samp(7,8)
  };
  
  samp *p;
  
  p = ob;

  for (int i = 0; i < 4; ++i) {
    if (p->get_a() != (i * 2 + 1) ||
	p->get_b() != (p->get_a() + 1)) {
      std::cout << "NG" << std::endl;
    }
    ++p;
  }

  std::cout << "OK" << std::endl;

  return 0;
}
