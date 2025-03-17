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
int operator ++(Dummy &a1){ 
int i=0;
i++;
return 1 ;}


int a;
class A {
 public:
  A* operator -> (){
  return new A;
  }
  void func(){ 
  int i=0;
  i++;
  i--;
  i=0;
  return ;}
};

template <class T>
void func(T x){
  int i=0;
  i++;
  i--;
}
template <class T ,int i> 
class AT {
 public:
 void func(){
   int j=0;
   j++;
   j--;
 }
 template  <class TT,int j>
 struct AT_N{
    void func(){
     int k=0;
     k+=0;
   }
  };
};


AT<int,10> obj1;
AT<short,1> obj2;
AT<char,1>::AT_N<int,10> nobj1;
AT<float,1>::AT_N<double,10> nobj2;





#include <stdio.h>
int main(){
gfunc();
gfunc(10);
gfunc(1,2);
operator + (dobj,1);
operator ++ (dobj);
A obj;
obj.operator->();
obj.func();

func(10);
func(1.0);
obj1.func();
obj2.func();
nobj1.func();
nobj2.func();


 puts("ok"); 
}


