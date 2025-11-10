#include <iostream>
#include <cstdint>

int main(void){

#if defined(PTRDIFF_MIN) && defined(PTRDIFF_MAX) && \
  defined(SIG_ATOMIC_MIN) && defined(SIG_ATOMIC_MAX)
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif
    
  return 0;
}
