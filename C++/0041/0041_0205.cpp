#include <iostream>

template<class T> struct Point{
  T x_, y_;
};

extern template struct Point<float>;
extern template struct Point<double>;

int main(void){
  Point<float> p_f;
  Point<double> p_d;

  std::cout << "ok" << std::endl;

  return 0;
}
