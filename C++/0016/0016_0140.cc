#include <iostream> 
using namespace std;
int a;
class A {
 public:
  A* operator -> (){return new A;}
}aobj;
struct  B {
  int operator = (B b){ return 10;}
}bobj;
namespace  C {
  int operator ++(A &a1){ return 1 ;}
}
class D {
public: 
  class D_N{
  public:
    int operator [](D_N d){return 10;}
  }dnobj;
}dobj;
struct E {
  struct E_N{
     operator int(){return a;}
   }enobj;
}eobj;
namespace F{
  namespace F_N{
   int operator +  (A bobj){return (0);}
   }
}
class G{
 public:
 int a; 
 G(){ a=0;
 }
};
struct H{
  int a;
 ~H(){ a=0; }
};
class I {
 public:
  class  I_N{
    public:
      ~I_N(){
         a--;
          }
    }iobj;
 ~I(){}
};

class J {
 public:
  void func(){ a++;}
}jobj;
namespace K{
  class K_N{
    public:
      struct K_NN{
        void func(){
        a++;
         }
      }knnobj;
  }knobj;
}

using namespace C;
using namespace F;
using namespace F_N;
using namespace K;
#include <stdio.h>
int main(){
aobj.operator->();
bobj.operator=( bobj);
operator++(aobj);
dobj.dnobj.operator[](dobj.dnobj);
eobj.enobj.operator int ();
operator+(aobj);
 {
   G *gp = new G; delete gp;
   H *hp = new H; delete hp;
   I::I_N *ip = new I::I_N; delete ip;
 }
jobj.func();
knobj.knnobj.func();

 puts("ok"); 
}
