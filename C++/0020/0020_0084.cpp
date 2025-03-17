#include <string>
#include <cassert>

void test()
{
    std::string s("aaabbb");
    std::string t("aaa");
    t.insert(2, s, 3);
    assert(t == "aabbba");
}

int main()
{
    test();
}
