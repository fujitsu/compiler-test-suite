namespace A {
  int i;
  void fa1(){
    int a=1;
    a++;
    i+=a;
  }
  void fa2(){
    int a=1;
    a++;
    i+=a;
  }
  namespace B {
    void fb1(){
      int b=2;
      b++;
      i+=b;
    }
    void fb2(){
      int b=2;
      b++;
      i+=b;
    }
    void fb3(){
      int b=2;
      b++;
      i+=b;
    }
    namespace C {
      void fc1(){
	int c=3;
	c++;
	i+=c;
      }
      void fc2(){
	int c=3;
	c++;
	i+=c;
      }
      void fc3(){
	int c=3;
	c++;
	i+=c;
      }
    }
  }
}
class T {
public:
  int i;
  void ft1(){
    int c=3;
    c++;
    i+=c;
  }
  void ft2(){
    int c=3;
    c++;
    i+=c;
  }
  void ft3(){
    int c=3;
    c++;
    i+=c;
  }
  void ft1o();
  void ft2o();
  void ft3o();
};
inline void T::ft1o(){
  int c=3;
  c++;
  i+=c;
}
inline void T::ft2o(){
  int c=3;
  c++;
  i+=c;
}
inline void T::ft3o(){
  int c=3;
  c++;
  i+=c;
}
T tobj;
using namespace A;
#include <stdio.h>
int main(){
  fa1();
  fa2();
  A::B::fb1();
  A::B::fb2();
  A::B::fb3();
  B::C::fc1();
  B::C::fc2();
  B::C::fc3();
  tobj.ft1();
  tobj.ft2();
  tobj.ft3();
  tobj.ft1o();
  tobj.ft2o();
  tobj.ft3o();

  puts("ok");
}
