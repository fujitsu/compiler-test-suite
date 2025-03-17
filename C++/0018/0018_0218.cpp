


#include <locale>
#include <codecvt>
#include <cassert>

int main()
{
    typedef std::codecvt_utf8<wchar_t> Codecvt;
    typedef std::wstring_convert<Codecvt> Myconv;
    Myconv myconv;
    assert(myconv.converted() == 0);
    std::string bs = myconv.to_bytes(L"\x40003");
    assert(myconv.converted() == 1);
    bs = myconv.to_bytes(L"\x40003\x65");
    assert(myconv.converted() == 2);
    std::wstring ws = myconv.from_bytes("\xF1\x80\x80\x83");
    assert(myconv.converted() == 4);
}
