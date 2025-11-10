#include <iostream>
#include <initializer_list>

struct X{
};

template<class T>
bool test(T x){
  bool ret = false;

  if(std::is_same<decltype(x), T>::value){
    ret = true;
  }

  return ret;
}

int main(void){
  std::initializer_list<X> a;
  
  auto ret1 = test(a);

  if(ret1){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
