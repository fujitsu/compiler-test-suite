

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
  };
  class C {
  public:
    void cfunc(){
    B::bfunc(); 
    }
  };
 };
struct AA {
  struct BB {
    struct CC {
      struct DD {
       static void ddfunc(){i++;}
     };
      struct EE {
         void eefunc(){
           DD::ddfunc();
           CC::DD::ddfunc();
           BB::CC::DD::ddfunc();
           AA::BB::CC::DD::ddfunc();
         }
      };  
    };
    struct FF {
       void fffunc(){
         CC::DD::ddfunc();
         BB::CC::DD::ddfunc();
         AA::BB::CC::DD::ddfunc();
       }  
    };
  };
  struct GG {
     void ggfunc(){
         BB::CC::DD::ddfunc();
         AA::BB::CC::DD::ddfunc();
     } 
  };
};
int main(){
 A::C acobj;
 acobj.cfunc();
 AA::BB::CC::EE eeobj;
 eeobj.eefunc();
 AA::BB::FF ffobj;
 ffobj.fffunc();
 AA::GG    ggobj;
 ggobj.ggfunc();

 if (i == 10 )
   cout << "ok\n";
 else
   cout << "ng i=" << i << "\n";
 return 0;
}
