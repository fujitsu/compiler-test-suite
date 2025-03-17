#include <cassert>

int main()
{
    auto a = [](int c)
    {
        for(int i = 0;i<5;i++)
        {
            if(i==3) goto label;
        }
    label: return c;
    };
    assert(a(1) == 1);
}
