


#include <locale>
#include <codecvt>
#include <cassert>

int main()
{
    {
        typedef std::codecvt_utf8<wchar_t> Codecvt;
        typedef std::wstring_convert<Codecvt> Myconv;
        Myconv myconv;
        assert(myconv.converted() == 0);
    }
    {
        typedef std::codecvt_utf8<wchar_t> Codecvt;
        typedef std::wstring_convert<Codecvt> Myconv;
        Myconv myconv(new Codecvt);
        assert(myconv.converted() == 0);
    }
}
