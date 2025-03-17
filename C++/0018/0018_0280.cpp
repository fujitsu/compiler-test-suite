






#include <memory>
#include <new>

struct Two
{
    int value;
    Two(int v, int) : value(v) {}
    Two(Two const & o) : value(o.value) {}
    ~Two() {}
};

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

int main()
{
    int i = 67;
    int const bad = -1;
    std::shared_ptr<Two> p = std::allocate_shared<Two>(test_allocator<Two>(54), i, bad);
}
