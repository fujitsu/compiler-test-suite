#include <memory>
#include <type_traits>

int main()
{
  std::allocator<int> a;
  static_assert(noexcept(std::allocator_traits<std::allocator<int>>::max_size(a)) == true, "");
  return 0;
  ;
}
