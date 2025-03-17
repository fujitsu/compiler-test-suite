#include <cassert>
#include <iomanip>
#include <sstream>
#include <string>

std::wstring quote(const std::wstring &p, wchar_t delim = '"', wchar_t escape = '\\')
{
  std::wstringstream ss;
  ss << p;
  std::wstring s;
  ss >> std::quoted(s, delim, escape);
  return s;
}

int main()
{
  assert(quote(L"\"abc") == L"abc");
  assert(quote(L"abc") == L"abc");
  assert(quote(L"abc def") == L"abc");
  assert(quote(L"") == L"");
  return 0;
  ;
}
