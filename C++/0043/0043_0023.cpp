#include <iostream>
#include <atomic>

int main(void){

  std::cout << ATOMIC_BOOL_LOCK_FREE << std::endl;
  std::cout << ATOMIC_CHAR_LOCK_FREE << std::endl;
  std::cout << ATOMIC_CHAR16_T_LOCK_FREE << std::endl;
  std::cout << ATOMIC_CHAR32_T_LOCK_FREE << std::endl;
  std::cout << ATOMIC_WCHAR_T_LOCK_FREE << std::endl;
  std::cout << ATOMIC_SHORT_LOCK_FREE << std::endl;
  std::cout << ATOMIC_INT_LOCK_FREE << std::endl;
  std::cout << ATOMIC_LONG_LOCK_FREE << std::endl;
  std::cout << ATOMIC_LLONG_LOCK_FREE << std::endl;
  std::cout << ATOMIC_POINTER_LOCK_FREE << std::endl;

  return 0;
}
