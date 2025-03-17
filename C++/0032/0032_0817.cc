#include <stdio.h>
struct E {
          union { int i; };
  E(){ i=10;}
};

class E2:private E {
  int a;
 public:
   
   void f()
     {
         a = E::i;
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


