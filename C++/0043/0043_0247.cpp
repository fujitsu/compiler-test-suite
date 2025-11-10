#include <exception>
#include "./004.h"

struct E
{
    static int count;
    E() { ++count; }
    ~E() { --count; }
};

int E::count =  0;

void test()
{
    std::exception_ptr ptr = std::current_exception();
    assert(ptr == nullptr);
    
    try
    {
        throw E();
        assert(false);
    }
    catch (...)
    {
        ptr = std::current_exception();
        assert(ptr != nullptr);
        assert(E::count == 1);
        
        std::exception_ptr ptr2 = std::current_exception();
        assert(ptr2 != nullptr);
        assert(E::count == 1);
        
        
        
        
        try
        {
            throw;
            assert(false);
        }
        catch (E&)
        {
            ptr = std::current_exception();
            assert(ptr != nullptr);
            assert(E::count == 1);
        }
    }
    
    ptr = std::current_exception();
    assert(ptr == nullptr);
    assert(E::count == 0);
    
    try
    {
        throw E();
        assert(false);
    }
    catch (...)
    {
        ptr = std::current_exception();
        assert(ptr != nullptr);
        assert(E::count == 1);
        {
            try
            {
                throw E();
                assert(false);
            }
            catch (...)
            {
                std::exception_ptr ptr2 = std::current_exception();
                assert(ptr != nullptr);
                assert(E::count == 2);
            }
        }
        std::exception_ptr ptr3 = std::current_exception();
        assert(ptr3 != nullptr);
        assert(E::count == 1);
        
        
        
    }
    
    ptr = std::current_exception();
    assert(ptr == nullptr);
    assert(E::count == 0);
}

PASS_CASE_MAIN_FUNCTION
