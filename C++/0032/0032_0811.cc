#include <stdio.h>

class A { public :
          virtual int f()=0;
          static A* const nil;		
};

class Object :public A {		
public:
	Object(A&i=*nil);
        A *aa;

};




int main(){
  printf("ok\n");
}
