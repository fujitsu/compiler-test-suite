#include <string>
#include <cassert>
#include <stdexcept>
#include <errno.h>

void test()
{
    size_t idx = 0;
    try
    {
        errno = 0;
        std::stod("aXXX", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::invalid_argument &)
    {
        assert(idx == 0);
    }

    try
    {
        errno = 0;
        std::stod(L"aXXX", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::invalid_argument &)
    {
        assert(idx == 0);
    }

    try
    {
        errno = 0;
        std::stold("aXXX", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::invalid_argument &)
    {
        assert(idx == 0);
    }

    try
    {
        errno = 0;
        std::stold(L"aXXX", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::invalid_argument &)
    {
        assert(idx == 0);
    }
}

int main()
{
    test();
    return 0;
}
