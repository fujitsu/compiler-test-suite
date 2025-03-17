#include <cassert>

int main()
{
    const int a = 1;
    if constexpr(a > 0)
    {  
        if constexpr(a > 1)
        {

        }else if constexpr(a > 2)
        {

        }
    }

    const int b(0);
    if constexpr(b == 0)
    {
        if(b < 0)
        {

        }
    }

    const int c{0};
    if constexpr(c == 0)
    {
      assert(c == 0);
    }else
    {

    }

    const int d = {1};
    if constexpr(d == 0)
    {
        if constexpr(d > 0)
        {
            if constexpr(d > 1)
            {

            }
        }

    }
}

