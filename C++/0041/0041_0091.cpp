#include <iostream>
#include <utility>

enum e1 : int { 
};

enum class e2 : long { 
};

int main(void){
  auto ret1 = std::is_same< std::underlying_type<e1>::type, int>::value; 
  auto ret2 = std::is_same< std::underlying_type<e2>::type, long>::value;

  if(ret1 && ret2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
