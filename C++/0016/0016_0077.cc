class C {
public:
  int a,b;
  void f(int i){
    int c;
    c=a+b+i;
    a += c;
  }
}cobj;
#include <stdio.h>
int main(){
  cobj.a=1;
  cobj.b=2;
  cobj.f(1);

  puts("ok");
}






