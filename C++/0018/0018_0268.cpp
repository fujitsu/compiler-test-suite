



#include <memory>
#include <cassert>
#include <iterator>
#include <cstddef>
#include <type_traits>
#include <cstdlib>
#include <new>
#include <climits>
#include <cassert>


template <class T>
struct test_allocator
{
    typedef T  value_type;
    test_allocator() {}
    explicit test_allocator(int i) {}
    template <class U> test_allocator(const test_allocator<U>& a){}
    value_type* allocate(int n, const void* = 0){
            return (value_type*)::operator new(n * sizeof(T));}
    void deallocate(value_type* p, int n) {}
    void destroy(value_type* p) {}

};

struct A{};

template <class T>
struct test_deleter
{
    explicit test_deleter(int s){}
    void operator()(T* p) {delete p;}
};

int main()
{
        std::shared_ptr<A> p(nullptr, test_deleter<A>(3), test_allocator<A>(5));
}
