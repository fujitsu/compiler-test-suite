






#include <chrono>
#include <limits>
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
void test()
{
    {
    typedef typename D::rep Rep;
    Rep max_rep = std::chrono::duration_values<Rep>::max();
    assert(D::max().count() == max_rep);
    }
    {
    typedef typename D::rep Rep;
    constexpr Rep max_rep = std::chrono::duration_values<Rep>::max();
    static_assert(D::max().count() == max_rep, "");
    }
}

int main()
{
    test<std::chrono::duration<int> >();
    test<std::chrono::duration<Rep> >();
}
