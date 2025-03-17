

#include <iostream>
using namespace std;

int i=0;
class A {
 public:
   class B {
   public:
static void bfunc(){  
        i++;
      }
    void nos_bfunc(){
        i+=2;
    }
  }b;
  class C {
  public:
   void cfunc();
  };
}a;
void A::C::cfunc(){
    B::bfunc(); 
    a.b.B::nos_bfunc(); 
}

struct AA {
  struct BB {
    struct CC {
      struct DD {
       void nos_ddfunc(){i+=2;}
      }dd;
      struct EE {
         void eefunc();
      };  
    }cc;
    struct FF {
       void fffunc();
    };
  }bb;
  struct GG {
     void ggfunc();
  };
}aa;


void AA::BB::CC::EE::eefunc(){
     aa.bb.cc.dd.nos_ddfunc();  
 }
void AA::BB::FF::fffunc(){
     aa.bb.cc.dd.nos_ddfunc();  
 }  

void AA::GG::ggfunc(){
     aa.bb.cc.dd.nos_ddfunc();  
 } 


int main(){
 A::C acobj;
 acobj.cfunc();
 AA::BB::CC::EE eeobj;
 eeobj.eefunc();
 AA::BB::FF ffobj;
 ffobj.fffunc();
 AA::GG    ggobj;
 ggobj.ggfunc();

 if (i == 9 )
   cout << "ok\n";
 else
   cout << "ng i=" << i << "\n";
 return 0;
}
