#include <cassert>

int main()
{
    if constexpr(const int a = 1;a > 0)
    {  
        if constexpr(a > 1)
        {
           assert(a == 1);
        }else if constexpr(a > 2)
        {

        }
    }
    if constexpr(const int b(0);b == 0)
    {
        if(b < 0)
        {

        }
    }
    if constexpr(const int c{0};c == 0)
    {
      assert(c == 0);
    }else
    {

    }
    if constexpr(const int d = {1};d == 0)
    {
        if constexpr(d > 0)
        {
            if constexpr(d > 1)
            {

            }
        }

    }
}
