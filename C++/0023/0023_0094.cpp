#include <cassert>
#include <type_traits>

void test1() 
{
    int cx[2] = {1,2};
    
    for (decltype(auto) i : cx) 
    {
        ++i;
        assert(true == (std::is_same<decltype(cx[1]), decltype(i)>::value));
    }
    
    for (auto j : cx)
    {
        ++j;
        assert(true == (std::is_same<decltype(cx[1]),decltype((j))>::value));
    }

    for (const auto j : cx)
    {
        assert(true == (std::is_same<const int,decltype(j)>::value));
        break;
    }

    for (volatile auto j : cx)
    {
        assert(true == (std::is_same<volatile int,decltype(j)>::value));
        break;
    }
}

int main()
{
    test1();
}
