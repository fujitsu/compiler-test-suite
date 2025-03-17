#include <iostream>

template <class type1, class type2> 
void myfunc(type1 x, type2 y)
{
  std::cout << x << " " << y << std::endl;
}

int main()
{

  myfunc(10,"hi");
  myfunc(0.23,10L);

  return 0;
}
