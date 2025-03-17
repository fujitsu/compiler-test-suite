#include <string>
#include <cassert>

void test()
{
    {
        char s[0];
        std::basic_string<char> ss(s, 0);
        assert(ss.size() == 0);
    }

    {
        char s[6] = "hello";
        std::basic_string<char> ss(s, 2);
        assert(ss.size() == 2);
    }

    {
        char s[6] = "hello";
        std::basic_string<char> ss(s, 5);
        assert(ss.size() == 5);
    }
}

int main()
{
    test();

    return 0;
}
