#include <stdio.h>
class B { 
public:
 struct IB {
  void Bf(void){printf("ok\n");}
 }ibobj;
}bobj;

class A { 
public: 
  static void  (B::IB::*bfp)(void);
}aobj;


void  (B::IB::*(A::bfp))(void);

int main(){
 A::bfp = &B::IB::Bf;
 (bobj.ibobj.*(aobj.bfp))();
}



