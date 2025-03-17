#include <stdio.h>
static int ctor_count=0;
class A {
public:
  A(int i){ ctor_count++;}
};


class B {
  public:
  B(const A&ap){ctor_count++;}
};

int x;
B f( A (x) );
B a(A(x+1));
B b(A(5));
int main(){
  if ( ctor_count ==4 ){
    printf("ok\n");
  } else{
    printf("ng %d\n",ctor_count);
  }
  return 0;
}

