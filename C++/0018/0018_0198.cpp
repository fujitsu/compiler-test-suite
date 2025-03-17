




#include <sstream>
#include <cassert>

int main()
{
    {
        std::ostringstream ss0(" 123 456");
        std::ostringstream ss(std::move(ss0));
        assert(ss.rdbuf() != 0);
        assert(ss.good());
        assert(ss.str() == " 123 456");
        int i = 234;
        ss << i << ' ' << 567;;
        assert(ss.str() == "234 5676");
    }
    {
        std::wostringstream ss0(L" 123 456");
        std::wostringstream ss(std::move(ss0));
        assert(ss.rdbuf() != 0);
        assert(ss.good());
        assert(ss.str() == L" 123 456");
        int i = 234;
        ss << i << ' ' << 567;;
        assert(ss.str() == L"234 5676");
    }
}
