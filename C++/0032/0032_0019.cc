class A {}aobj;
class B {
public: 
   operator A();
   operator B();
}bobj;

B::operator A(){return aobj;};
B::operator B(){return bobj;};




#include <stdio.h>
int main(){


  puts("ok");
}


