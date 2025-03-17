#include <stdio.h>
class B {
 int b;
public: 
 B(int i):b(i){}
  friend class A;
};

class A {
public:
 int f(B*bp){ return bp->b;}

};

int main(){
   A aobj;
   B bobj(3);
   if ( (aobj.f(&bobj)) == 3){ printf("ok\n");}
}
