#include <string>
#include <cassert>
#include <stdexcept>
#include <errno.h>

void test_L()
{
    size_t idx = 0;
    try
    {
        errno = 0;
        std::stol(L"8888888888888888888888888888888888888888888888888", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::out_of_range &)
    {
        assert(idx == 0);
    }

    try
    {
        errno = 0;
        std::stoul(L"8888888888888888888888888888888888888888888888888", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::out_of_range &)
    {
        assert(idx == 0);
    }

    try
    {
        errno = 0;
        std::stoll(L"8888888888888888888888888888888888888888888888888", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::out_of_range &)
    {
        assert(idx == 0);
    }

    try
    {
        errno = 0;
        std::stoull(L"8888888888888888888888888888888888888888888888888", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::out_of_range &)
    {
        assert(idx == 0);
    }
}

void test()
{
    size_t idx = 0;
    try
    {
        errno = 0;
        std::stol("8888888888888888888888888888888888888888888888888", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::out_of_range &)
    {
        assert(idx == 0);
    }

    try
    {
        errno = 0;
        std::stoul("8888888888888888888888888888888888888888888888888", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::out_of_range &)
    {
        assert(idx == 0);
    }

    try
    {
        errno = 0;
        std::stoll("8888888888888888888888888888888888888888888888888", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::out_of_range &)
    {
        assert(idx == 0);
    }

    try
    {
        errno = 0;
        std::stoull("8888888888888888888888888888888888888888888888888", &idx);
        if (errno == ERANGE)
        {
            assert(false);
        }
    }
    catch (const std::out_of_range &)
    {
        assert(idx == 0);
    }
}

int main()
{
    test();
    test_L();
    return 0;
}
