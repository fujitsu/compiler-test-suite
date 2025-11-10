#include <iostream>

int main(void){
  auto a = 10ll;
  auto b = 10LL;
  auto c = 10ull;
  auto d = 10ULL;

  if(a == 10ll && b == 10LL &&
     c == 10ull && d == 10ULL){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
