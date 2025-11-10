#include <iostream>

int main(void){

  int Blue;

  enum class Color { Red, Blue, Green };

  Color red = Color::Red;

  if( red == Color::Red ){    
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
