#include <iostream>

class Point {
public:
  int x_, y_, z_;

  Point(int x): Point(x, 100) {}
  Point(int x, int y): Point(x, y, 1000){}
  Point(int x, int y, int z): x_(x), y_(y), z_(z) { }

  
};

int main(void){
  Point p1(1);

  if(p1.x_ == 1){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;    
  }

  return 0;
}
