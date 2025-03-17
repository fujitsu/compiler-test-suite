#include <regex>
#include <cassert>

int main()
{
    {
        std::cmatch m;
        const char s[] = "ababc";
        assert(std::regex_match(s, m, std::regex("(ab)*c", std::regex_constants::awk)));
        assert(m.size() == 2);
        assert(m.size() > 0);
        assert(!(m.size() < 0));
    }
    {
        std::cmatch m;
        const char s[] = "ab";
        assert(!std::regex_match(s, m, std::regex("ba", std::regex_constants::awk)));
        assert(m.size() == 0);
        assert(!(m.size() < 0));
        assert(m.empty());
    }
    return 0;
}
