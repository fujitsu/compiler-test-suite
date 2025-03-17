


#include <locale>
#include <codecvt>
#include <sstream>
#include <cassert>

int main()
{
    typedef std::wbuffer_convert<std::codecvt_utf8<wchar_t> > B;
    {
        B b;
        std::mbstate_t s = b.state();
    }
}
