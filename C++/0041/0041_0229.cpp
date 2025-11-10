#include <iostream>

template<class T> 
void test(T t){
  T x;
  T y;

  y.age = 1000;

  if(t.age == 10 && x.age == 10 && y.age == 1000){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
}

int main(void){
  struct local{
    int age = 10;
  } person;

  test(person);

  return 0;
}
