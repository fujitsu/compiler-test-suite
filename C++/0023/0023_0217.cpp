#include <cassert>

int main()
{
    if(int a = 0;a == 0)
    {
      assert(a == 0);
    }else
    {

    }

    if(int b(0);b == 0)
    {
      assert(b == 0);
    }else if(b > 0)
    {

    }

    if(int c{0};c == 0)
    {
        if(c > 0)
        {

        }

    }

    if(int d = {0};d == 0)
    {
        if(d > 0)
        {
            if(d > 1)
            {

            }
        }
    }
}

