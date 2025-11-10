#include <iostream>
#include <initializer_list>

void print(std::initializer_list<int> vals){

  for(auto p=vals.begin(); p != vals.end(); ++p){
    std::cout << *p << std::endl;
  }
}

int main(void){

  print( {1, 2, 3, 4, 5} );
  
  std::cout << "ok" << std::endl;

  return 0;
}
