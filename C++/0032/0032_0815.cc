#include <stdio.h>
struct E {
          enum  { ABORT, RAISE=10 };
 public:

};

class E2:public E {
 int a;
 public:

   void f()
     {
         a = E::RAISE;
     }
     int ff(){ return a;}
 };


E2 e2obj;

int main(){
  e2obj.f();
  if (e2obj.ff()==10){
    printf("ok\n");
  } else {
    printf("ng\n");  
  }
}
