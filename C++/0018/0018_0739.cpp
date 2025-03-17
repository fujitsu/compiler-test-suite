






#include <tuple>
#include <string>
#include <cassert>

int main()
{
    {
        int i = 0;
        std::string s;
        std::tie(i, std::ignore, s) = std::make_tuple(42, 3.14, "C++");
        assert(i == 42);
        assert(s == "C++");
    }
}
