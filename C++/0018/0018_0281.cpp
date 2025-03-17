





#include <memory>
#include <cassert>

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

int main()
{
    int i = 67;
    char c = 'e';
    std::shared_ptr<A> p = std::make_shared<A>(i, c);

}
