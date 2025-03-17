#include <string>
#include <cassert>
#include <iostream>

void test()
{
    std::string s("aabb");
    std::string t("abbad");
    int r = t.compare(1, 2, s, 2);
    assert(r == 0);
}

int main()
{
    test();
}
