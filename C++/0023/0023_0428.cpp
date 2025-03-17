#include <cassert>
#ifndef __has_include<string>
   bool f = false;
#else 
   bool f = true;
#endif

int main()
{
    assert(f==true);
}
