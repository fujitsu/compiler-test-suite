








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
  for (int i = 0; i < 10; i++) {
    #pragma omp atomic                          
    i = i + 1;
  }
  return 0;                                     
}

int main()
{
  printf("OK\n");
  return 0;
}
