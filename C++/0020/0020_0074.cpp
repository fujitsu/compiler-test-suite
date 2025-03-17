#include <regex>
#include <type_traits>
#include <cassert>
using namespace std;

bool test(std::regex_constants::syntax_option_type syntax)
{
    std::match_results<const char *> m;
    const char s[] = "abcdefghijk";
    return std::regex_search(s, m, std::regex("cd((e)fg)hi|(z)", syntax));
}

bool test(void)
{
    std::match_results<const char *> m;
    const char s[] = "abcdefghijk";
    return std::regex_search(s, m, std::regex("cd((e)fg)hi|(z)"));
}

int main()
{
    static_assert((std::is_enum<std::regex_constants::syntax_option_type>::value), "");
    assert(test() == test(std::regex_constants::ECMAScript));
}
