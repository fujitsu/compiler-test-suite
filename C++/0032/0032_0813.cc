#include <stdio.h>
class E {
 public:
          enum ee { ABORT, RAISE=10 };
	};

class E2:public E {
 E::ee a;
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
