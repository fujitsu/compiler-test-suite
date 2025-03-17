namespace A {
  int i;
  void fa(){
    int a=1;
    a++;
    i+=a;
  }
  namespace B {
    void fb(){
      int b=2;
      b++;
      i+=b;
    }
    namespace C {
      void fc(){
	int c=3;
	c++;
	i+=c;
      }
    }
  }
}
using namespace A;
#include <stdio.h>
int main(){
  fa();
  A::B::fb();
  B::C::fc();

  puts("ok");
}
