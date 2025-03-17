#include <cassert>
#include <codecvt>
#include <locale>
#include <sstream>

typedef std::codecvt_utf8<wchar_t> Codecvt;
typedef std::wstring_convert<Codecvt> Myconv;
typedef std::wbuffer_convert<Codecvt> Mybuf;
typedef std::wbuffer_convert<Codecvt> B;

int main()
{
  Myconv c1(new Codecvt);
  Myconv c3(new Codecvt, std::mbstate_t());
  std::stringstream s;
  B b1(s.rdbuf(), new Codecvt, std::mbstate_t());

  return 0;
}
