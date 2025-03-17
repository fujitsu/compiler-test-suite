








#include <stdio.h>

class Base {                                    
  virtual int foo(){ return 0;}                 
};

class Derived : public virtual Base {           
 public:
  int foo();
};

int Derived::foo()
{
  return 0;                                     
}

int main()
{
  #pragma omp parallel for                      
  for (int i = 0; i < 10; i++) {
  }
  printf("OK\n");
  return 0;
}
