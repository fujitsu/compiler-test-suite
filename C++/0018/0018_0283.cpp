





#include <memory>
#include <cassert>

template <class T>
struct test_deleter
{
    test_deleter(){}
    void operator()(T* p) {}
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

struct A{};

int main()
{
    A* ptr = new A;
    std::shared_ptr<A> p(ptr, test_deleter<A>());
    test_deleter<A>  d;
    p.reset(ptr,d);
}
