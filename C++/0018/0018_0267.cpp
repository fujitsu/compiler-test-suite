





#include <memory>
#include <cassert>
struct A{};

template <class T>
struct test_deleter
{
    explicit test_deleter(int s){}
    void operator()(T* p) {delete p;}
};
int main()
{
    std::shared_ptr<A> p(nullptr, test_deleter<A>(3));
    test_deleter<A>* d = std::get_deleter<test_deleter<A> >(p);
}
