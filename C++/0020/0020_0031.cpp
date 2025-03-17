#include <cassert>
#include <iomanip>
#include <sstream>
#include <string>

std::string quote(const std::string &p, char delim = '"', char escape = '\\')
{
  std::stringstream ss;
  ss << p;
  std::string s;
  ss >> std::quoted(s, delim, escape);
  return s;
}

int main()
{
  assert(quote("!", '!') != "!");
  return 0;
  ;
}
