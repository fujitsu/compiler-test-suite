#include <iostream>

auto func1() -> int{
  std::cout << "ok" << std::endl;
  return 0;
}

auto func2(int arg) -> decltype(arg){
  std::cout << "ok" << std::endl;
  return 0;
} 

template<class T, class U>
auto func3(T t, U u) -> decltype(t * u){
  
  return t * u;
}

int main(void){

  func1();
  func2(10);
  auto ret = func3(10, 10);

  if(ret == 100){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
