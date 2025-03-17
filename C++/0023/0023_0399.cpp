#include <cassert>

template <const char * p> 
struct B
{
    void fun()
    {
        assert(*p == 'a');
    }
};

const char p[] = "abcdefg";

int main()
{
    B<p>  b;
    b.fun();
}
