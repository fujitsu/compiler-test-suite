





#include <functional>
#include <cassert>


class A
{
    int data_[10];
public:
    static int count;

    A()
    {
        ++count;
        for (int i = 0; i < 10; ++i)
            data_[i] = i;
    }

    A(const A&) {++count;}

    ~A() {--count;}

    int operator()(int i) const
    {
        for (int j = 0; j < 10; ++j)
            i += data_[j];
        return i;
    }
};

int A::count = 0;

int main()
{
    {
    std::function<int(int)> f = A();
    assert(A::count == 1);
    assert(f.target<A>());
    f = nullptr;
    assert(A::count == 0);
    assert(f.target<A>() == 0);
    }
}
