







#include <memory>
#include <cassert>

struct A
{
};

class Deleter
{
    public:
        Deleter& operator=(Deleter&);
        void operator()(void*) {}
};

int main()
{
    {
    A* p = new A[3];
    std::unique_ptr<A[]> s(p);
    }
    {
    A* p = new A[3];
    std::unique_ptr<A[], Deleter> s(p);
    }
}
