#include <exception>
#include "./004.h"

struct E
{
    int data;
    E(int v = 0) : data(v) {}
};

void test()
{
    std::exception_ptr ptr = std::make_exception_ptr(E(5));
    try
    {
        std::rethrow_exception(ptr);
        assert(false);
    }
    catch (E& e)
    {
        assert(e.data == 5);
    }
}

PASS_CASE_MAIN_FUNCTION
