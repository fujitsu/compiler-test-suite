








#include <chrono>
#include <cassert>

class Rep
{
    int data_;
    public:
    constexpr Rep() : data_(-1) {}
    explicit constexpr Rep(int i) : data_(i) {}

    bool constexpr operator==(int i) const {return data_ == i;}
    bool constexpr operator==(const Rep& r) const {return data_ == r.data_;}

    Rep& operator*=(Rep x) {data_ *= x.data_; return *this;}
    Rep& operator/=(Rep x) {data_ /= x.data_; return *this;}
};

template <class D>
void
test()
{
    D d;
    assert(d.count() == typename D::rep());
    constexpr D d2 = D();
    static_assert(d2.count() == typename D::rep(), "");
}

int main()
{
    test<std::chrono::duration<Rep> >();
    std::chrono::duration<int> d(3);
}
