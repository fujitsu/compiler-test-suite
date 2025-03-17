
namespace NA {
  class {  
    class A{};
  }cobj;
  struct { union A{}; }sobj;
  enum {e1}eobj;
  union {class A{};}uobj;

  class X {
    class {}obj;
  };
  namespace { 
   class B {
      int b;
    };
  int a;
  }
}
namespace NB{
  class {    }aa;
  struct {  }bb;
  enum {e1}cc;
  union {}dd;
  namespace { 
   int ee;
  }
}

using namespace NA;
using namespace NB;
#include <stdio.h>
int main(){
  puts("ok");
}
