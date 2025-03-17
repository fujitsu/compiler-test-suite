class A {    
 public:
 int acc;
};
struct A2 {}; 

namespace A3 {}  
union A4{};  
enum A5 {e};  
typedef int A6; 



class C {           
  typedef int I;
};
namespace D {       
   class D1 {};
};



namespace EE {
  namespace EE2{}  
};
class E : private A{
 public:
 class E2{};   
 struct E3{}; 
 union  E4{}; 
 enum E5{ee};   
 typedef int ** E6 ; 
 friend class A ;  
 using A::acc ;      
}; 



namespace F {
 namespace G = F; 
 int F1;
};
namespace H {
  using namespace F; 
};
namespace I {
  using F::F1;  
};



struct J {
 static int ja;      
 int * jfunc(int,char){return 0;} 
}; 
namespace K {
 static int ja;  
 int * kfunc(int,char){return 0;} 
 int kc;    
};
class L {
 virtual int lfunc1(char,int){return 0;} 
 virtual void lfunc2()=0;        
};
class  M :L{
 void lfunc2(){}
};
#include <stdio.h>
int main(){
  puts("ok");
}
