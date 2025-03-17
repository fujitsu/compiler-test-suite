#include <stdio.h> 
class Object {
 public:
	Object();
};


class Class {
    int a;
 public:
    int b;
	friend Object::Object( );
};

Class C;
 Object::Object(){ C.a=1; C.b = C.a;  }

int main(){
  Object o;
  if ( C.b == 1) { printf("ok\n");}

}
