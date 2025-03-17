#include <stdio.h>
int count =0;
class A {

 public:
  int *a;
  const int *b;
   virtual int*& at(int) {; count += 2; return a;}
   virtual const int *const& at(int) const {
    count += 3; return b; };

};

class B  :public A{
 public:
   virtual int*& at(int){  count +=4; return a;};
   virtual const int *const& at(int) const {  count += 5; return b;}

};

class C: public B{ public: C(){}}; 

 C cobj;
 const C cobj1;
 C *cp = &cobj;

 const C  *cp1 = &cobj1;   

int main(){
  cobj.at(1);
  cp->at(1);
  if (count == 8 ){
    cobj1.at(1);
    cp1->at(1);
   if (count == 18 ){
     printf("ok\n");
   } else {
     printf("ng =%d\n",count);
   } 
  } else {
     printf("ng =%d\n",count);
  }
 
}
