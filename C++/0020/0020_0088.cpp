#include <string>
#include <cassert>

void test()
{
    const char *p = "bbbb";
    std::string t("aaaa");
    static_assert(!noexcept(p > t), " ");
}

int main()
{
    test();
}
