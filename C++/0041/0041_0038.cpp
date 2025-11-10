#include <iostream>
#include <type_traits>

int main(void){
  auto utf8_1 = "utf8";
  auto utf8_2 = u8"utf8";
  auto utf16 = u"utf16";
  auto utf32 = U"utf32";
  auto wchar = L"wchar";
  
  if( std::is_same< decltype(utf8_1), const char*>::value &&
      std::is_same< decltype(utf8_2), const char*>::value &&
      std::is_same< decltype(utf16), const char16_t*>::value &&
      std::is_same< decltype(utf32), const char32_t*>::value &&
      std::is_same< decltype(wchar), const wchar_t*>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
