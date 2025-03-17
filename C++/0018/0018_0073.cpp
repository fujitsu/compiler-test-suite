





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

int main()
{
    typedef std::chrono::system_clock Clock;
    typedef std::chrono::duration<Rep, std::milli> Duration;
    {
        std::chrono::time_point<Clock, Duration> t;
        assert(t.time_since_epoch() == Duration::zero());
    }
}
