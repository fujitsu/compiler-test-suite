#include <codecvt>
#include <cstddef>
using namespace std;

int main()
{
  size_t st = 0;
  codecvt_utf8<wchar_t> c1(12);
  codecvt_utf16<wchar_t> c2(12);
  codecvt_utf8_utf16<wchar_t> c3(st);
  return 0;
}
