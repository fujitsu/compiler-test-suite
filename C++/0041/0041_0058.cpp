#include <iostream>

struct X{  
  X(X&& x) = default;
  X& operator=(X&& x) = default;
};

struct Y{
  Y(Y&& x) = delete;
  Y& operator=(Y&& x) = delete;
};

int main(void){

  std::cout << "ok" << std::endl;

  return 0;
}
