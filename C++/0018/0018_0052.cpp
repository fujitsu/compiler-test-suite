







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

template <class D, class R>
    void
test(R r)
{
    D d(r);
    assert(d.count() == r);
    constexpr D d2(R(2));
    static_assert(d2.count() == 2, "");
}

int main()
{
    test<std::chrono::duration<int> >(5);
    test<std::chrono::duration<int, std::ratio<3, 2> > >(5);
    test<std::chrono::duration<Rep, std::ratio<3, 2> > >(Rep(3));
    test<std::chrono::duration<double, std::ratio<2, 3> > >(5.5);
}
