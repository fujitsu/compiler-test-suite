#include <cassert>
#include <typeinfo>
#include <type_traits>

class A
{
  int q;
};

class S { 
   public:
   A a;
   int X1 : 2; 
   volatile double y1;
};

int main()
{
    S s;
    const auto [ m ,x, y ] = s;
    assert(typeid(m) == typeid(A));
    assert(typeid(y) == typeid(const volatile double));
    assert(true == (std::is_same<const int,decltype(x)>::value));
    return 0;
}
