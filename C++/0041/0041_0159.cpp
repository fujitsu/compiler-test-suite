#include <iostream>

struct point{
  int x[3] = { 1, 2, 3 };
  int y[3] { 1, 2, 3};
  
};


int main(void){
  point p;

  if( p.x[0] == 1 && p.y[0] == 1){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
