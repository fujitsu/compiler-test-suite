#include <string>
#include <cassert>

void test()
{
    std::string s("Hello World");
    std::string t;
    t.assign(s, 6);
    assert(t == "World");
}

int main()
{
    test();
}
