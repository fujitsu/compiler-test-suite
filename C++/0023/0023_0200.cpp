#include <cassert>

int main()
{
    int c=0;
    for(int i = 0;i < 2;i++)
    {
        if ( int &a = c;a == 0)
        {
         assert(c == 0);
        }
    }
}
