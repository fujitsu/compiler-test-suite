#include <iostream>
#include <cstddef>

void func(void){
  throw std::nullptr_t{};
}

void test1(void){
  try{
    func();
  } catch(std::nullptr_t e){
    throw;
  }
}

void test2(void){
  try{
    func();
  } catch(std::nullptr_t& e){
    throw;
  }
}

int main(void){

  try{
    test1();
  } catch(std::nullptr_t){

    try{
      test2();
    }
    catch(std::nullptr_t&){
      std::cout << "ok" << std::endl;
    }
  }

  return 0;
}
