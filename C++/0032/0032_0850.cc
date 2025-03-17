#include <stdio.h>
struct A {
  virtual void f(){printf("global\n");}
} ;

int main(){

 struct A {
   virtual void f(){printf("ok\n");}
 } ;
 A aobj,*ap=&aobj;
 ap->f();

}
