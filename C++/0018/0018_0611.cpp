





#include <regex>
#include <cassert>

void test01()
{
  std::regex src_re("aaba");
  const unsigned mark_count = src_re.mark_count();
  const std::regex::flag_type flags = src_re.flags();
  std::regex target_re;
  target_re.assign(std::move(src_re));
  assert( target_re.flags() == flags );
  assert( target_re.mark_count() == mark_count );
}

int main()
{ 
  test01();
  return 0;
}
