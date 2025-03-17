
#include <stdio.h>

class A{
	public:
		int ag;
};

class B:public A{
	public:
		int ag1;
};

class C{
	public:
		int ag;
};

class CLS2:public B,C {
	public:
		int clss;
};
int main() {
	CLS2	obj3;



        puts("ok");
}
