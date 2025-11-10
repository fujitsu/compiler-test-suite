#include <iostream>

template<class T> T add(T x, T y){
  return x + y;
}

template int add(int x, int y);
extern template float add(float x, float y);
template double add(double x, double y);


int main(void){
  
  
  {
    int x = 10;
    int y = 20;

    int z = add(x, y);
  }

  
  {
  }

  
  {
    double x = 10.0;
    double y = 20.0;
    double z = add(x, y);
  }

  std::cout << "ok" << std::endl;

  return 0;
}
