#include <cassert>

int main()
{
    bool f = true;
    do{
        if constexpr( const int a = 0;a == 0)
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
    }while(f == false);
}
