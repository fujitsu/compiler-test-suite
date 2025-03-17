class D;
class B {
public: 
  operator D();
};
class D : B {}; 


#include <stdio.h>
int main(){


  puts("ok");
}
