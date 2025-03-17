#include <string>
#include <cassert>

void test()
{
    char s[6] = "hello";
    std::basic_string<char> ss(s, 20);
    assert(ss.size() == 20);
}

int main()
{
    test();

    return 0;
}
