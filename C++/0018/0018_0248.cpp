



#include <memory>
#include <cassert>

struct A
{
    void operator&() const {}
};

struct nothing {
    operator char&()
    {
        static char c;
        return c;
    }
};

int main()
{
    {
    int i;
    double d;
    assert(std::addressof(i) == &i);
    static_assert(noexcept(std::addressof(i)),"");
    assert(std::addressof(d) == &d);
    A* tp = new A;
    const A* ctp = tp;
    assert(std::addressof(*tp) == tp);
    assert(std::addressof(*ctp) == tp);
    delete tp;
    }
    {
    union
    {
        nothing n;
        int i;
    };
    assert(std::addressof(n) == (void*)std::addressof(i));
    }
}
