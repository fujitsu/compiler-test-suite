






#include <tuple>
#include <cassert>

template <class T>
class A1
{
    int id_;
public:
    explicit A1(int id = 0) noexcept : id_(id) {}
    int id() const {return id_;}
};

struct alloc_first
{
    static bool allocator_constructed;
    typedef A1<int> allocator_type;
    int data_;
    alloc_first() : data_(0) {}
    alloc_first(int d) : data_(d) {}
    alloc_first(std::allocator_arg_t, const A1<int>& a, const alloc_first& d)
        : data_(d.data_)
    {
        allocator_constructed = true;
    }
    friend bool operator==(const alloc_first& x, const alloc_first& y)
        {return x.data_ == y.data_;}
    friend bool operator< (const alloc_first& x, const alloc_first& y)
        {return x.data_ < y.data_;}
};

bool alloc_first::allocator_constructed = false;

struct alloc_last
{
    static bool allocator_constructed;
    typedef A1<int> allocator_type;
    int data_;
    alloc_last() : data_(0) {}
    alloc_last(int d) : data_(d) {}
    alloc_last(const alloc_last& d, const A1<int>& a)
        : data_(d.data_)
    {
        allocator_constructed = true;
    }
    friend bool operator==(const alloc_last& x, const alloc_last& y)
        {return x.data_ == y.data_;}
    friend bool operator< (const alloc_last& x, const alloc_last& y)
        {return x.data_ < y.data_;}
};

bool alloc_last::allocator_constructed = false;

class DefaultOnly
{
    int data_;

    DefaultOnly(const DefaultOnly&);
    DefaultOnly& operator=(const DefaultOnly&);
public:
    static int count;

    DefaultOnly() : data_(-1) {++count;}
    ~DefaultOnly() {data_ = 0; --count;}

    friend bool operator==(const DefaultOnly& x, const DefaultOnly& y)
        {return x.data_ == y.data_;}
    friend bool operator< (const DefaultOnly& x, const DefaultOnly& y)
        {return x.data_ < y.data_;}
};

int DefaultOnly::count = 0;
int main()
{
    {
        std::tuple<int> t(std::allocator_arg, A1<int>());
        assert(std::get<0>(t) == 0);
    }
    {
        std::tuple<DefaultOnly> t(std::allocator_arg, A1<int>());
        assert(std::get<0>(t) == DefaultOnly());
    }
}
