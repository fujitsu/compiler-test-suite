#include <string>
#include <cassert>

void test()
{
    const char *p = "bbbb";
    std::string t("aaaa");
    static_assert(!noexcept(t < p), " ");
}

int main()
{
    test();
}
