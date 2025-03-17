#include <iostream>
using namespace std;

class A {
 public:
typedef int I;
};

  class B {
    public :
  };
  class C : public B{
  public:
    class A {
      public :
     typedef char I;
    };
  A::I x;
   int f(){
   A::I y;   
    return sizeof(x) == sizeof(y);    
   }
  }xx;

int main(){
   if (xx.f())
     cout <<"ok\n";
   else 
     cout <<"ng\n";

 }

