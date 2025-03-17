






#include <memory>
#include <new>
#include <cstdlib>
#include <cassert>

int new_count = 0;

struct A
{
    static int count;

    A(int i, char c) : int_(i), char_(c) {++count;}
    A(const A& a)
        : int_(a.int_), char_(a.char_)
        {++count;}
    ~A() {--count;}

    int get_int() const {return int_;}
    char get_char() const {return char_;}
private:
    int int_;
    char char_;
};

int A::count = 0;

template <class T>
struct test_allocator
{
    typedef T  value_type;
    test_allocator() {}
    explicit test_allocator(int i) {}
    template <class U> test_allocator(const test_allocator<U>& a){}
    value_type* allocate(int n, const void* = 0){
            return (value_type*)::operator new(n * sizeof(T));}
    void deallocate(value_type* p, int n) {}
    void destroy(value_type* p) {}

};

int main()
{
    int i = 67;
    char c = 'e';
    std::shared_ptr<A> p = std::allocate_shared<A>(test_allocator<A>(54), i, c);
}
