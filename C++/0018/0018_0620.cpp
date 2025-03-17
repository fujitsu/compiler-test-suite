





#include <regex>
#include <cassert>

template <class CharT>
void
test(const CharT* p, std::size_t len, std::regex_constants::syntax_option_type f)
{
    std::basic_regex<CharT> r(p, len, f);
}

int main()
{
  try{
    test("\\{", 1, std::regex_constants::grep);
  } catch(...){
    printf("ok\n");
  }
}
