#include <iostream>
#include <cstdint>

int main(void){
  int8_t v1 = 10;
  uint8_t v2 = 20;

  auto signed_min = INT8_MIN;
  auto usigned_min = UINT8_MAX;

  auto con = INT8_C(1000);
  auto u_con = UINT8_C(2000);

  if(v1 == 10 && v2 == 20 && 
     signed_min == INT8_MIN && usigned_min == UINT8_MAX &&
     con == 1000 && u_con == 2000){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
