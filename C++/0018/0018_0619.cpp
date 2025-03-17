





#include <regex>
#include <cassert>

template <class CharT>
void
test(const CharT* p, std::regex_constants::syntax_option_type f, unsigned mc)
{
    std::basic_regex<CharT> r(p, f);
}

int main()
{
  try{
    test("{}", std::regex_constants::egrep, 2);
  } catch(...){
    printf("ok\n");
  }
}
