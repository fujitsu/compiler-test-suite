#include <iostream>

class Point{
public:
  constexpr
  Point(int x, int y, int z): p_{x, y, z} {
  }

  int p_[3];			      
};


int main(void){
  constexpr Point p(1, 10, 100);

  static_assert(p.p_[0] == 1,   "p[0] is not 1");
  static_assert(p.p_[1] == 10,  "p[1] is not 10");
  static_assert(p.p_[2] == 100, "p[2] is not 100");
  
  std::cout << "ok" << std::endl;

  return 0;
}
