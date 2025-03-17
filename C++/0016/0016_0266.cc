class C {
public:
  int a,b;
  void f(){}
}cobj;
#include <stdio.h>
int main(){
  cobj.a=1;
  cobj.b=2;

  puts("ok");
}
