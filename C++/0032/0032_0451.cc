








#include <stdio.h>

class Base {                                    
  virtual int foo(){
     #pragma omp parallel sections              
     {
     for (int i = 0; i < 10; i++) {
     }
     }
     return 0;
  }                 
};

class Derived : public virtual Base {           
 public:
  int foo();
};

int Derived::foo()
{
  #pragma omp parallel sections                 
  {
  for (int i = 0; i < 10; i++) {
  }
  }
  return 0;                                     
}

int main()
{
  printf("OK\n");
  return 0;
}
