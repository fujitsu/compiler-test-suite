#include <string>
#include <cassert>

void test()
{
    std::string s("aaabbb");
    std::string t("aaa");
    t.append(s, 3);
    assert(t == "aaabbb");
}

int main()
{
    test();
}
