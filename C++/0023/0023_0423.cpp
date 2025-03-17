#include <cassert>
#if __has_include(<string>)
#include <string>
 bool flag = true;
#else 
 bool flag = false;
#endif

int main()
{
    assert(flag == true);
}
