#include <iostream>
#include <vector>
#include <string>

int main(void){

  struct local{
    std::string name;
    int age;
  };

  std::vector<local> v;

  std::cout << "ok" << std::endl;

  return 0;
}
