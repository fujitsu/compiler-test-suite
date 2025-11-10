#include <iostream>

class Point{
public:
  Point(int x) : Point(x, 100) { }
  Point(int x, int y) : Point(x, y, 1000) { }
  Point(int x, int y, int z) : x_(x), y_(y), z_(z){ }

  int x_, y_, z_;
};

int main(void){
  Point p1(10);

  if( p1.x_ == 10 && p1.y_ == 100 && p1.z_ == 1000){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
