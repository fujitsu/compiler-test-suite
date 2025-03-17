#include <cassert>

int main()
{
    for(int i = 0;i < 2;i++)
    {
        if constexpr(const int a = 0;a == 0)
        {
            if(a == 0)
            {
                if constexpr(a == 0)
                {
                  assert(a == 0);
                }
            }
        }
        else if constexpr(a > 0)
        {

        }
    }
}
