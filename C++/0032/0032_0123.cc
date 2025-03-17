#include <stdio.h>
struct X { 
  int i;
           int operator +(){i=5; return i; }
           operator int *(){ if(i==5)printf("ok\n"); return 0; }
};

class A :private X {

 public:
   using X::operator +;
   using X::operator int*;
}aobj;

int main(){
 aobj.operator+();
 aobj.operator int*();

}
