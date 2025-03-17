#include <cassert>

class T
{
    public:
        int mem;
};

T t1;

void fun1(T t = t1)
{ 
    t.mem = 3;
    assert(t.mem == 3);
}

void fun2(const T t = t1)
{
    assert(t.mem == 0);
}
void fun3(volatile T t = t1)
{
     t.mem = 2;
     assert(t.mem == 2);
}
int main()
{
    fun1();
    fun2();
    fun3();
}
