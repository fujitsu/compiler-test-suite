#include <iostream>

int count = 0;

struct X {
  X(int){ }
};

struct Y{
  Y(X = X(count)){ }

  ~Y(){
    std::cout << "ok" << std::endl;
  }
};

int main(void){
  Y arr[4];

  return 0;
}
