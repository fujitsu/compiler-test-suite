#include <cassert>

int main()
{
    const int a = 0;
    for(int i = 0;i < 2;i++)
    {
        if constexpr(a == 0)
        {
          assert(a == 0);
        }
        else if constexpr(a > 0)
        {

        }
    }
}
