#include <cassert>
#include <codecvt>
#include <iostream>
#include <locale>
using namespace std;

int main()
{
  typedef std::codecvt_utf8<wchar_t> Codecvt;
  typedef std::wstring_convert<Codecvt> Myconv;
  {
    Myconv myconv;
    static_assert(noexcept(myconv.converted()), "");
  }
}
