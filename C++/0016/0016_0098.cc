class CL {};
struct ST {};
union UN {};
enum EN { e1 };
class A {
 CL a ;  
 ST b;    
 UN c;   
 EN d;   
}; 
namespace B {
 namespace NA{}; 
};



class C {
  int a[20];  
  int (*b)[30]; 
};  



typedef int II;
struct D {
  typedef void A(int); 
};
class E {
  short (*pf)(int);  
  II c;              
  int  C::*cp;       
};

#include <stdio.h>
int main(){
  puts("ok");
}
