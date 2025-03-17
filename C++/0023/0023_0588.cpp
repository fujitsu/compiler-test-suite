#include <cassert>

struct [[unknow_attr]] [[unknow_attr,unknow_attr]] [[not_std]]A
{
    int a = 1;
};

class [[using CC:unknow_attr_1]][[using CC:unknow_attr_1,unknow_attr_1]] B
{
    public:
        int b = 1;
};

int main()
{
    A  a; 
    B  b;
    assert(a.a == 1);
    assert(b.b == 1);
}
