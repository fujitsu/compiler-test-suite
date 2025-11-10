#include  <iostream>



template<class T = int>
void  f(T t =  0)
{
  std::cout << t << std::endl;
}

int main()
{
  f();
  return 0;
}
