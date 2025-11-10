#include <iostream>
#include <type_traits>

template<class T>
bool func(void){
  return std::is_floating_point<T>::value;
}

int main(void){
  auto ret1 = func<bool>();
  auto ret2 = func<char>();
  auto ret3 = func<signed char>();
  auto ret4 = func<unsigned char>();
  auto ret5 = func<wchar_t>();
  auto ret6 = func<char16_t>();
  auto ret7 = func<char32_t>();
  auto ret8 = func<short>();
  auto ret9 = func<unsigned short>();
  auto ret10 = func<int>();
  auto ret11 = func<unsigned int>();
  auto ret12 = func<long>();
  auto ret13 = func<unsigned long>();
  auto ret14 = func<long long>();
  auto ret15 = func<unsigned long long>();
  
  if(!ret1 && !ret2 && !ret3 &&
     !ret4 && !ret5 && !ret6 &&
     !ret7 && !ret8 && !ret9 &&
     !ret10 && !ret11 && !ret12 &&
     !ret13 && !ret14 && !ret15){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
