class A {
  public:
  int x;          
  short ** y[2];   
  private:
  void func(){} 
  char z;
  protected:
  typedef int T;
  int (**(*w)[20] ); 
};

class B {
 int A::*ap;        
 int *A::*bp;      
 short ***A::*dp;  
};
class C {
  B  A::*cap ;      
 private:
  A ***B::*ccp;      
};
#include <stdio.h>
int main(){
  puts("ok");
}
