#include <cassert>

template<typename... Args>
bool test(Args ...args)
{
    return (...||args);
}

int main()
{
   bool a = test();
   assert(a == false);
}
