






#include <regex>
#include <cassert>

void
test(std::initializer_list<char> il, std::regex_constants::syntax_option_type f, unsigned mc)
{
    std::basic_regex<char> r(il, f);
    assert(r.flags() == f);
    assert(r.mark_count() == mc);
}


int main()
{
  try{
    test({'{'}, std::regex_constants::egrep, 0);
  } catch(...){
    printf("ok\n");
  }
}
