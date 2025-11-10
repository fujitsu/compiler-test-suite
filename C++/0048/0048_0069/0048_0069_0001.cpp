#include <iostream>
#include <string>

void sub1()
{
  char16_t a = u'a';
  char32_t b = U'a';
  std::cout << a << std::endl;
  std::cout << b << std::endl;

  std::string s = u8"abcde";
  std::cout << s.size() << ": " << s << std::endl;
}
