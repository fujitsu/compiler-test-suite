#include <iostream>

template<class T>
struct X{
  static int sx;
  int x;
  T tmp;
};

template<class T>
void test(void){
  auto sx_size = sizeof(X<T>::sx);
  auto x_size = sizeof(X<T>::x);
  auto tmp_size = sizeof(X<T>::tmp);

  if(sx_size == sizeof(int) &&
     x_size == sizeof(int) &&
     tmp_size == sizeof(T) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
}

int main(void){

  test<double>();

  return 0;
}
