#include <iostream>
#include <vector>

union A{
  std::vector<int> vec;
  
  A(){ }
  ~A(){ }
};


int main(void){
  A test;

  std::cout << "ok" << std::endl;

  return 0;
}
