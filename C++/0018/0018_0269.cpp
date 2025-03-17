

#include <memory>
#include <cassert>

struct A{};

template <class T>
struct test_deleter
{
    explicit test_deleter(int s){}
    void operator()(T* p) {delete p;}
};

template <class T>
struct test_allocator
{
    typedef T  value_type;
    test_allocator(int i) {}
    template <class U> test_allocator(const test_allocator<U>& a) {}
    T* allocate(int n, const void* = 0){
            return (T*)::operator new(n * sizeof(T));}
    void deallocate(T* p, int n){}
};

int main()
{
    try
    {
        std::shared_ptr<A> p(nullptr, test_deleter<A>(3), test_allocator<A>(5));
    }
    catch (std::bad_alloc&)
    {
    }
}
