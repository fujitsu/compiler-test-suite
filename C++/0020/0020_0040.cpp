#include <cassert>
#include <iomanip>
#include <sstream>
#include <string>

typedef std::basic_string<char> string_type;
string_type quote(const string_type &p, char delim = '"', char escape = '\\')
{
  std::stringstream ss;
  ss << std::quoted(p, delim, escape);
  string_type s;
  ss >> s;
  return s;
}

int main()
{
  assert(quote("\\", '!') != "!\\!");
  return 0;
  ;
}
