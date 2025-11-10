#include <iostream>
#include <typeinfo>

void printType(){ }

template <class Thead, class... Tbody>
void printType(Thead head, Tbody... body){
  std::cout << typeid(Thead).name() << " : " << head << std::endl;
  printType(body...);
}

int main(void){

  printType(1, 2.17f, 3.14, 'A', "ABC");

  return 0;
}
