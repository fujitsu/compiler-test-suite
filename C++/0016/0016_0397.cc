class A {
 public:
   void func(){}
}obj;
void func(){}
void func(int i){}

#include <stdio.h>
int main(){
 obj.func();
 func();
 func(10);

 puts("ok");
}
