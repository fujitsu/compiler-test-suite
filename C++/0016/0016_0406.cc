void func(){
 int i=1;
 lab:;
 i++;
 lab2:;
 i--;
 if (i==0) goto lab;
 if (i==2) goto lab2;
}
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
AT<int> obj1;
AT<short> obj2;
#include <stdio.h>
int main(){
  int i=0;
  func();
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

