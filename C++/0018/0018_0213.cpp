


#include <locale>
#include <codecvt>
#include <sstream>
#include <cassert>


int main()
{
    typedef std::wbuffer_convert<std::codecvt_utf8<wchar_t> > B;
    {
        B b;
        assert(b.rdbuf() == nullptr);
    }

    {
        std::stringstream s;
        B b(s.rdbuf());
        assert(b.rdbuf() == s.rdbuf());
    }

    {
        std::stringstream s;
        B b(s.rdbuf(), new std::codecvt_utf8<wchar_t>);
        assert(b.rdbuf() == s.rdbuf());
    }

    {
        std::stringstream s;
        B b(s.rdbuf(), new std::codecvt_utf8<wchar_t>, std::mbstate_t());
        assert(b.rdbuf() == s.rdbuf());
    }
}
