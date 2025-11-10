#include  <iostream>



template<class T = int>
T  f(T t =  0)
{
  return ++t;
}

int main()
{
  int i = f();
  std::cout << i << std::endl;
  double d = f(0.1);
  std::cout << d << std::endl;
  return 0;
}
