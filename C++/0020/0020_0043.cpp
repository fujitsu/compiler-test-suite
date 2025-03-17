#include <cassert>
#include <ios>

int main()
{
  static_assert(noexcept(std::make_error_code(std::io_errc::stream)), "");
  return 0;
  ;
}
