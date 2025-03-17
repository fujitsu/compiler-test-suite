


#include <locale>
#include <codecvt>

int main()
{
    typedef std::codecvt_utf8<wchar_t> Codecvt;
    typedef std::wstring_convert<Codecvt> Myconv;
    Myconv myconv;
    std::mbstate_t s = myconv.state();
}
