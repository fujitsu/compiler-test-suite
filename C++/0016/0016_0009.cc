

#include <stdio.h>
int i=0;
int main(){
 struct AA {
  int a;
  void func(){}
  typedef int II;
  class AA_NEST {};
 }x;
 x.a=10;

 struct BB {
   class AA {
     void ff_L(int){}
   };
   void aa_func(){
   i++;
   }
 }y;
 y.aa_func();

 puts("ok");
}
