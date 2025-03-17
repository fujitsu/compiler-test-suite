#include <cassert>

int main()
{
    auto a = [](auto c)
    {
        try
        {
            int i = 1;
        }catch(int i)
        {
            assert(i==1);
        }
        return c;
    };
    assert(a(1)==1);
}
