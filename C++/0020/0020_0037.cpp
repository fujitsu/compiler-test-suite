#include <cassert>
#include <iomanip>
#include <sstream>
#include <string>

std::wstring quote(const std::wstring &p, wchar_t delim = '"', wchar_t escape = '\\')
{
  std::wstringstream ss;
  ss << std::quoted(p, delim, escape);
  std::wstring s;
  ss >> s;
  return s;
}

int main()
{
  assert(quote(L"Hi", '!') == L"!Hi!");
  assert(quote(L"a") == L"\"a\"");
  assert(quote(L"Hi!", '!') == LR"(!Hi\!!)");
  assert(quote(L"Hi", '!') == L"!Hi!");
  assert(quote(L"") == L"\"\"");
  assert(quote(L"a") == L"\"a\"");
  return 0;
  ;
}
