#include <stdio.h>
#include <exception>
#include <stdlib.h>

int count;
int dcount;
int dcount2;
class A {
    public:
	 A() { }
    	~A() { dcount++; if (dcount == 3) throw 'a'; }
};
class B {
    public:
    	~B() { dcount2++; printf("%d\n", dcount2); 
	       if (dcount2 == 3) { dcount2+=100; throw 'b';}
	     }
};

void end() {
  printf("ok\n");
  exit (0);
}
int main()
{
  std::set_terminate(end);
    try {
	A a[5];
	B b[5];
    } 
    catch (...) {
    }
}

