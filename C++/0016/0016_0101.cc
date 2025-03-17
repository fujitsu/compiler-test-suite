class A {
 void func(int i){}  
 typedef int B;     
}; 





class C {          
  int cc;
 public:
  typedef char * NEST;
};
class D {
  C::NEST y;        
};
int y;
namespace NA{
  int x;
};
namespace F {
  using NA::x;      
  using ::y;        
};

class G {           
  class NE {};     
};

#include <stdio.h>
int main(){
  puts("ok");
}
