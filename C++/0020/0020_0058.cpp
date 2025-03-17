#include <cstddef>
#include <locale>
#include <regex>
#include <type_traits>

int main()
{
  static_assert(((std::is_signed<std::messages_base::catalog>::value) && (std::is_integral<std::messages_base::catalog>::value)), "");
}
