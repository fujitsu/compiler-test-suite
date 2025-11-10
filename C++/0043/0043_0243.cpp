#include "./004.h"

#include <cstddef>
#include <stdlib.h>

namespace std
{
    typedef void (*terminate_handler)();
    terminate_handler __terminate_handler = 0;
    terminate_handler set_terminate(terminate_handler __handler) noexcept
    {
        terminate_handler __ret = __terminate_handler;
        __terminate_handler = __handler;
        return __ret;
    }
    terminate_handler get_terminate() noexcept
    {
        return __terminate_handler;
    }
    void terminate() noexcept
    {
        if (__terminate_handler)
            __terminate_handler();
        exit(0); 
    }
}

char buffer[1024];
void* operator new(std::size_t size)
{
    return buffer;
}
void operator delete(void* ptr) 
{
    throw 1;
}
void my_terminate() noexcept
{
}

void test()
{
    std::set_terminate(my_terminate);
    int* p = new int();
    
    
}

PASS_CASE_MAIN_FUNCTION
