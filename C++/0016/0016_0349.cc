

#include <stdio.h>

class A{
	public:
		int ag;
};

class B{
	public:
		int ag;
};

class C:public A, B{
	public:
		int ag1;
};

class CLS2:public C {
	public:
		int clss;
};
int main() {
	CLS2	obj3;

	obj3.clss=30;

        puts("ok");
}
