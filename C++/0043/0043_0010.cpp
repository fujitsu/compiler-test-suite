#include <iostream>
#include <memory>

int main(void){
  int* p = new int;


  std::declare_no_pointers( reinterpret_cast<char*>(&p), sizeof(int*) );

  if( std::get_pointer_safety() != std::pointer_safety::strict){
    std::cout << "ok" << std::endl;
  }

  std::undeclare_no_pointers( reinterpret_cast<char*>(&p), sizeof(int*) );

  return 0;
}
