#include <iostream>

template<class T>
struct Point{
  T x_, y_;

  Point(T x, T y): x_(x), y_(y){}
};

template<class T>
using MyPoint = Point<T>;

int main(void){
  MyPoint<int> p_int(10, 20);
  MyPoint<float> p_f(1.0, 2.0);
  MyPoint<double> p_d(2.17, 3.14);
  
  std::cout << "ok" << std::endl;

  return 0;
}
