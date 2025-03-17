template<class T> class A {
 public:
 void func(){
    int i=0;
    i++;
  }
};
void gfunc(int i){
i++;
i--;
}
A<int> obj1;
A<float> obj2; 
#include <stdio.h>
int main(){
 obj1.func();
 obj2.func();
 gfunc(10);

 puts("ok");
}
