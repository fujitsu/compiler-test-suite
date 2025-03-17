







#include <functional>
#include <cstdlib>
#include <cassert>

class A
{
    int data_[10];
public:
    static int count;

    explicit A(int j)
    {
        ++count;
        data_[0] = j;
    }

    A(const A& a)
    {
        ++count;
        for (int i = 0; i < 10; ++i)
            data_[i] = a.data_[i];
    }

    ~A() {--count;}

    int operator()(int i) const
    {
        for (int j = 0; j < 10; ++j)
            i += data_[j];
        return i;
    }

    int id() const {return data_[0];}
};

int A::count = 0;


int main()
{
    {
    std::function<int(int)> f1 = A(1);
    std::function<int(int)> f2 = A(2);
    assert(A::count == 2);
    assert(f1.target<A>()->id() == 1);
    assert(f2.target<A>()->id() == 2);
    swap(f1, f2);
    assert(A::count == 2);
    assert(f1.target<A>()->id() == 2);
    assert(f2.target<A>()->id() == 1);
    }
}
