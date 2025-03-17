#include <cassert>
#include <type_traits>

const int  g1()  {return 1;};
const int  g2()  {return 1;};

template<typename T>
int f(T*,T*)
{
    assert(true == (std::is_same<T, decltype(g1)>::value));
    return 1;
}


int main()
{
    int y = f(g2,g1);

}
