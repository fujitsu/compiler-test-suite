#include <cassert>

int main()
{
    int c = 0;
    switch(c)
    {
        case 1:
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
        case 2:
            {
                if(int b = 1;b > 0)
                {
                 assert(b == 1);
                }
            }
    }
}
