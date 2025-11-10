#include <iostream>

template<class T>
T add(T x, T y){
  return x + y;
}

template int add(int x, int y);
extern template double add(double x, double y);

int main(void){
  auto z_int = add(1, 2);

  if(z_int == 3){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;    
  }

  return 0;
}
