#include <cassert>
#include <iomanip>
#include <sstream>
#include <string>

std::string quote(const char *p, char delim = '"', char escape = '\\')
{
  std::stringstream ss;
  ss << std::quoted(p, delim, escape);
  std::string s;
  ss >> s;
  return s;
}

int main()
{
  assert(quote("\\", '!') != "!\\!");
  return 0;
  ;
}
