#include <iostream>
using namespace std;



int i=0;
void gfunc(){
i++;
}
void gfunc(int i){
i=i+1;
}
void gfunc(int i, char c){
i+=1;
}
class Dummy{}dobj;
class Dummy2{}d2obj;
int operator +(Dummy &a,int i){
return 0;
}
int operator +(Dummy &a,char c){
return 1;
}
int operator +(Dummy &a,float f){
return 2;
}
int operator ++(Dummy &a1){ return 1 ;}
int operator ++(Dummy2 &a1){ return 2 ;}


int a;
class A {
 public:
  A* operator -> (){
  return new A;}
  void func(){ 
  return ;}
  void func(int i){ 
  return ;}
  A(){}
  ~A(){}
  virtual int funcV(int i){
  return i;}
};
namespace  N {
  void func_n(){
   a++;
  }
  void func_n(int i){
   a--;
  }
  namespace N_N{
   void func_n(int i,int j){
     a++;
   }
   void func_nn(float f){
     a--;
  }
   void func_nn(){}
   class C {
    public:
     void func_n(){
      a=0;
     }
     int func_c(){return 0;}
     int func_c(int i){return i;}
     C(){}
     C(int i){}
     ~C(){}
     C * operator ->(){return this;}
     struct  S {
       void func_n(){
         a-=0;
        }
       int func_s(){return 0;}
       int func_s(int i){return i;}
       class  C_N{
         public:
         void func_n(){
           a++;
        }
         int func_cn(){return 0;}
         int func_cn(int i){return i;}
         ~C_N(){}
         C_N & operator[](int i){return *this;}
       }cnobj;
     }sobj;
   }cobj;
 }
}
using namespace N;
using namespace N_N;
#include <stdio.h>
int main(){
gfunc();
gfunc(10);
gfunc(1,2);
operator + (dobj,1);
operator + (dobj,'c');
operator + (dobj,(float)1.0);
A obj;
obj.operator->();
obj.func();
obj.func(10);
obj.funcV(10);

func_n();
func_n(10);
func_n(1,1);
func_nn(1.0);
func_nn();
cobj.func_n();
cobj.func_c();
cobj.func_c(10);
cobj.operator->();
cobj.sobj.func_n();
cobj.sobj.func_s();
cobj.sobj.func_s(10);
cobj.sobj.cnobj.func_n();
cobj.sobj.cnobj.func_cn();
cobj.sobj.cnobj.func_cn(10);
cobj.sobj.cnobj.operator[](1);

 puts("ok"); 
}


