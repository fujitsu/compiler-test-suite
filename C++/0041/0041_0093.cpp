#include <iostream>
#include <type_traits>
#include <utility>

int main(void){
  
  auto ret1 = std::is_same< std::remove_const<const int>::type, int>::value; 
  auto ret2 = std::is_same< std::remove_const<const volatile int>::type, volatile int>::value; 
  auto ret3 = std::is_same< std::remove_const<const int&>::type, const int&>::value;
  auto ret4 = std::is_same< std::remove_const<const int*>::type, const int*>::value;
  auto ret5 = std::is_same< std::remove_const<const int* const>::type, const int*>::value;

  
  auto ret6 = std::is_same< std::remove_volatile<volatile int>::type, int>::value; 
  auto ret7 = std::is_same< std::remove_volatile<volatile int&>::type, volatile int&>::value; 
  auto ret8 = std::is_same< std::remove_volatile<volatile int*>::type, volatile int*>::value; 
  auto ret9 = std::is_same< std::remove_volatile<int* volatile>::type, int*>::value; 

  
  auto ret10 = std::is_same< std::remove_cv<const int>::type, int>::value; 
  auto ret11 = std::is_same< std::remove_cv<const volatile int>::type, int>::value; 
  auto ret12 = std::is_same< std::remove_cv<const int*>::type, const int*>::value; 
  auto ret13 = std::is_same< std::remove_cv<const int&>::type, const int&>::value; 

  if(ret1 && ret2 && ret3 && ret4 && ret5 &&
     ret6 && ret7 && ret8 && ret9 &&
     ret10 && ret11 && ret12 && ret13){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
