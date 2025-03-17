







#include <regex>
#include <cassert>

template <class String>
void
test(const String& p, std::regex_constants::syntax_option_type f, unsigned mc)
{
    std::basic_regex<typename String::value_type> r(p, f);
    assert(r.flags() == f);
    assert(r.mark_count() == mc);
}

int main()
{
  try{
    test(std::string("\\{}"), std::regex_constants::grep, 1);
  } catch(...){
    printf("ok\n");
  }
}
