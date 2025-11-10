#include <iostream>
#include <utility>

enum class X { ZERO, ONE, TWO };

int main(void){ 
  std::underlying_type<X>::type x;

#if defined (__GNUC__) && defined(__EDG_VERSION__) && (__EDG_VERSION__ < 500)
  if(std::is_same<decltype(x), unsigned int>::value){
#else
  if(std::is_same<decltype(x), int>::value){
#endif
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
