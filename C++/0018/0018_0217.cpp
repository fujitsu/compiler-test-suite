


#include <locale>
#include <codecvt>
#include <cassert>

int main()
{
    {
        typedef std::codecvt_utf8<wchar_t> Codecvt;
        typedef std::wstring_convert<Codecvt> Myconv;
        Myconv myconv(new Codecvt, std::mbstate_t());
        assert(myconv.converted() == 0);
    }
}
