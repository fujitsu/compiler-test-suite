#include <iostream>
#include <type_traits>

template<class T>
bool func(T x){
  bool ret = std::is_same<decltype(x), int>::value; 
  return ret;
}

int main(void){

  bool ret1 = std::is_same<int, int>::value; 

  int x = 10;
  bool ret2 = std::is_same<int, decltype(x)>::value;        
  bool ret3 = std::is_same<const int, decltype(x)>::value; 

  bool ret4 = func(10);

  if(ret1 && ret2 && !ret3 & ret4){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
