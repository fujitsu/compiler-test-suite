#include <iostream>

int main(void){
  long long a = 1;

  long long int b = 2;

  unsigned long long c = 3;

  unsigned long long int d = 4;


  if(a == 1 && b == 2 &&
     c == 3 && d == 4){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
