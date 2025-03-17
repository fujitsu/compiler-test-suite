





#include <memory>
#include <cassert>
#include <new>
#include <cstdlib>

struct A{};

template <class T>
struct test_deleter
{
    explicit test_deleter(int s){}
    void operator()(T* p) {delete p;}
};

bool throw_next = false;

void* operator new(std::size_t s) throw(std::bad_alloc)
{
    if (throw_next)
        throw std::bad_alloc();
    return std::malloc(s);
}

void  operator delete(void* p) throw()
{
    std::free(p);
}

int main()
{
    A* ptr = new A;
    throw_next = true;
    try
    {
        std::shared_ptr<A> p(ptr, test_deleter<A>(3));
    }
    catch (std::bad_alloc&)
    {
    }
}
