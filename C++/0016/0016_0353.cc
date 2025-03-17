

#include <stdio.h>

class A{
	public:
		int ag;
};

class B{
	public:
		int ag;
};

class C{
	public:
		int ag;
};

class CLS:public A,public B, public C{
    public:
	int age;
	int name;
	int print(int, int);
};

int CLS::print(int a, int b) {
	age=10;
	this->name=a*b;
	printf("age : %d, this->name : %d\n", age, this->name);
	return 40;
}
int main() {
	CLS 	obj;
	int 	prt=20;

	obj.name=40;
	obj.print(prt, 30);
}
