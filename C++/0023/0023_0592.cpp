namespace [[unknow_attr_1]][[unknow_attr_1,unknow_attr_1]][[not_s]] A
{
    void f()
    {
        int f = 1;
    }
}

namespace [[using BB:unknow_attr_1]][[unknow_attr_1,unknow_attr_1]] B
{
    void f()
    {
        int f = 1;
    }
}

int main()
{
    A::f();
    B::f();
}
