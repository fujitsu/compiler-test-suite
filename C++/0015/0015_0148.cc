#define _CRT_SECURE_NO_DEPRECATE 1
#include <new>
#include <iostream>
#include <cstring>

char global_area[1000];

class Class{
public:
  Class (){

  char* p = new(global_area) char[10];
  throw ::strcpy( p, "aaaaaaaaa" );
  }
  ~Class() {void operator delete(void *p);}
};

Class *func1() {
  return new Class[2];
}

int main()
{

  try{
    func1();
  }catch(char* p){

    std::cout << p << std::endl;
    std::cout << global_area << std::endl;
  }
  return 0;
}
