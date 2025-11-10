#include <iostream>
#include <cstdint>

int main(void){

#if defined(WCHAR_MIN) && defined(WCHAR_MAX) && \
  defined(WINT_MIN) && defined(WINT_MAX)
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif
    
  return 0;
}
