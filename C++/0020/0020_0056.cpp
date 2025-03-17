#include <cassert>
#include <codecvt>
#include <locale>
#include <sstream>

int main()
{
  typedef std::codecvt_utf8<wchar_t> Codecvt;
  typedef std::wstring_convert<Codecvt> Myconv;
  typedef std::wbuffer_convert<Codecvt> B;

  Myconv myconv1(new Codecvt);
  Myconv myconv3(new Codecvt, std::mbstate_t());
  std::stringstream s;
  B b1(s.rdbuf(), new std::codecvt_utf8<wchar_t>, std::mbstate_t());
}
