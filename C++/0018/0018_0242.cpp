





#include <memory>
#include <cassert>

template <class T>
void test_address()
{
    T* tp = new T();
    const T* ctp = tp;
    const std::allocator<T> a;
    assert(a.address(*tp) == tp);
    assert(a.address(*ctp) == tp);
    static_assert(noexcept(a.address(*ctp)),"");
    delete tp;
}

struct A
{
    void operator&() const {}
};

int main()
{
    test_address<int>();
    test_address<A>();
}
