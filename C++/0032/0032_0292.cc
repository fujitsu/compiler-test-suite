

#include <iostream>
using namespace std;

int i=0;
template <class T> 
class A {
 public:
   class B {
   public:
static T bfunc(){
        i++;
      }
  };
  class C {
  public:
    T cfunc(){
    B::bfunc(); 
    }
  };
 };


template <class T>
struct AA {
  struct BB {
    struct CC {
      struct DD {
       static void ddfunc(){i+=sizeof(T);}
     };
      struct EE {
         void eefunc(){
           DD::ddfunc();
         }
      };  
    };
    struct FF {
       void fffunc(){
         CC::DD::ddfunc();
       }  
    };
  };
  struct GG {
     void ggfunc(){
         BB::CC::DD::ddfunc();
     } 
  };
};
int main(){
 A<void> ::C acobj;
 acobj.cfunc();
 AA<char>::BB::CC::EE eeobj;
 eeobj.eefunc();
 AA<char>::BB::FF ffobj;
 ffobj.fffunc();
 AA<char>::GG    ggobj;
 ggobj.ggfunc();

 if (i == 4 )
   cout << "ok\n";
 else
   cout << "ng i=" << i << "\n";
 return 0;
}
