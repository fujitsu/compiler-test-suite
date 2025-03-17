#include <cassert>
#include <stdio.h>

int main () 
{
    {
        int i = 0;
        i = i++ + 2;
        assert(i == 2); 
    }
    {
        int i = 0;
        i = (i++) + 2;
        assert(i == 2);
    }
    {
        int i = 0;
        i = i++ + i++;
        assert(i == 1);
    }
    {
        int i = 0;
        i = (i++ + ++i);
        assert(i == 2);
    }
    {
        int i = 0;
        i = i++ + --i;
        assert(i == 0);
    }
}
