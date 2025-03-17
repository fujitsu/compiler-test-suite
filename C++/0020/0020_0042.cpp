#include <cassert>
#include <ios>

int main()
{
  static_assert(noexcept(std::iostream_category()), "");
  return 0;
  ;
}
