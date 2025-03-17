#include <stdio.h>
class B { 
public:
  void Bf(void){printf("ok\n");}
}bobj;

class A { 
public: 
  static void  (B::*bfp)(void);
}aobj;


void  (B::*(A::bfp))(void);

int main(){
 A::bfp = &B::Bf;
 
 (bobj.*(aobj.bfp))();
}



