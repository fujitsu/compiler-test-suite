class A {
 public:
  int a;
};
struct B {
 int b;
};
union C{
 int c;
};
namespace  D{
 int d;
};
enum E { e };




class F {
  public :
  int f;
};

class G :private F{  
 public:
 using F::f;  
};

union H {
 int h;
};

#include <stdio.h>
int main(){
  puts("ok");
}
