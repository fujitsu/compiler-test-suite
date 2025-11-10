#include <iostream>

class X
{
private:
  void f()
  {
    std::cout << "X.f()\n";
  }
};

template< class T >
auto f( T& x, int )
  -> decltype( x.f() )
{
  return x.f();
}

template< class T >
void f( T&, ... )
{
  std::cout << "f( T&, ... )\n";
}

int main()
{
  X x;
  f( x, 0 ); 
}
