#include <iostream>
#include <vector>

int main(void){
  
  int array[] = { 0, 1, 2 };
  for(int x : array){
    std::cout << x << std::endl;
  }

  
  std::vector<double> vec;
  vec.push_back( 0.0 );
  vec.push_back( 2.71 );
  vec.push_back( 3.14 );

  for(auto x : vec){
    std::cout << x << std::endl;
  }

  std::cout << "ok" << std::endl;
  
  return 0;
}
