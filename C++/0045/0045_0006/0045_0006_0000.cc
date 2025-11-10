


int i;
void func(){
 i++;
 if (i==0) goto lab;
 i--;
 lab:;
 i++;
}
void func2(){
 i++;
 if (i==0) goto lab1;
 i--;
 lab1:;
 i++;
 i++;
 if (i==0) goto lab2;
 i--;
 lab2:;
 i++;
 i++;
 if (i==0) goto lab3;
 i--;
 lab3:;
 i++;
}
class A {
 public:
  int a;
  void func(){
   a=0;
   if (a==0) goto lab;
   a--;
  lab:;
   a++;
  }
  
}aobj;

template <class T > void tfunc(T x){
  if (sizeof(x) == x) goto lab;
  x++;
 lab:;
  x--;
}
template <class T> class AT {
 public:
  void func(){
   T x;
   x=0;
   if (x==0) goto lab;
   x++;
 lab:;
   x--;
 }
};
extern void other_file();

AT<int> obj1;
AT<short> obj2;
#include <stdio.h>
int main(){
  func();
  func2();
  other_file();
  tfunc(4);
  tfunc(1.0);
  obj1.func();
  obj2.func();
  i++;
  if (i) goto lab;
  i--;
 lab:;
  if (i==100) goto labelmain;
  i++;
 labelmain:;

  puts("ok");
}
