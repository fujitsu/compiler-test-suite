








#include <memory>
#include <utility>
#include <cassert>

struct A
{
};

int main()
{
    {
    std::unique_ptr<A[]> s(new A[3]);
    A* p = s.get();
    std::unique_ptr<A[]> s2 = std::move(s);
    static_assert(noexcept(std::unique_ptr<A[]>(std::move(s))),"");
    static_assert(noexcept(s2=std::move(s)),"");
    }
}
