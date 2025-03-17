#include <stdio.h>
class C {
public:
    class A;
    friend class A;
    class A;      

};

int main(){
  C cobj;
  printf("ok\n");
}
