#include <iostream>

enum class Color { Red, Green, Blue };

enum struct Colors { Red, Green, Blue };

int main(void){
  Color a = Color::Green;
  

  Colors b = Colors::Red;

  if(a == Color::Green && 
     b == Colors::Red){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
