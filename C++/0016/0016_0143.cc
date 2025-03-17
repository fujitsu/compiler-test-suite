#include <iostream> 
using namespace std;



template <class T >
void gfunc(T x){
x++;
}
class Dummy{}dobj;
class Dummy2{}d2obj;
template <class T>
int operator +(Dummy &a,T i){
i++;
i--;
return 0;
}
int a;
template <class T>
class A {
 public:
  operator int(){
    return a;
  }
  void funca (){
    a++;
  }
  struct A_N {
   int operator || (Dummy bobj){
     return (0);
   }
   operator char(){
      return (0);
   }
   void funca(){
     a--;
   }
  }anobj;
  template <class TT , int i>
  class AT{
     public:
   int operator && (Dummy& bobj){
     return (0+0);
   }
   operator short(){
      return (1);
   }
   void funca(){
     a-=1;
   }
  };
};



A<int> ai;
A<short> as;
A<unsigned int>::AT<int,10> ati;
A<long int>::AT<char ,20> atc;
#include <stdio.h>
int main(){
  gfunc(10);
  gfunc(1.0);
  operator+(dobj,1);
  operator+(dobj,1.0);

  ai.operator int();
  ai.funca();
  ai.anobj.operator ||(dobj);
  ai.anobj.operator char();
  ai.anobj.funca();

  as.operator int();
  as.funca();
  as.anobj.operator ||(dobj);
  as.anobj.operator char();
  as.anobj.funca();

  ati.operator &&(dobj);
  ati.operator short();
  ati.funca();

  atc.operator &&(dobj);
  atc.operator short();
  atc.funca();

  puts("ok");
}


