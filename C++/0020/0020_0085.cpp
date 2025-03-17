#include <string>
#include <cassert>

void test()
{
    std::string s("aaabc");
    std::string t("aefd");
    t.replace(1, 2, s, 3);
    assert(t == "abcd");
}

int main()
{
    test();
}
