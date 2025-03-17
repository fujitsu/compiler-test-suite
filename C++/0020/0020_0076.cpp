#include <string>
#include <cassert>

void test()
{
    char s[2] = "A";
    std::basic_string<char> ss(s);
    assert(ss.size() == 1);
}

int main()
{
    test();

    return 0;
}
