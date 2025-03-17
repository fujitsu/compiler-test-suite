#include <cassert>

int main()
{
     const int a = 0;
     int c = 0;
     while(c)
     {
        if constexpr(a == 0)
        {
         assert(a == 0);
        }
        else if constexpr(a > 0)
        {

        }
        break;
    }
}
