#include <string>
#include <cassert>

void test()
{
    const char *p = "aaaa";
    std::string t("bbbb");
    static_assert(!noexcept(p < t), " ");
}

int main()
{
    test();
}
