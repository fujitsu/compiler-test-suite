#include <iostream>

template<class T>
struct X{
  static T x;
};

template<class T>
T X<T>::x;


int main(void){
  X<int> a;

  if(a.x == 0){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
