

#include <stdio.h>

class A{
	public:
		int ag;
};

class C{
	public:
		int ag;
};

class B:public A{
	public:
		int ag;
};

class CLS:public B {
    public:
	int age;
	int name;
	int print(int, int);
};

class CLS2:public A,C {
	public:
		int clss;
};

int CLS::print(int a, int b) {
	age=10;
	this->name=a*b;
	printf("age : %d, this->name : %d\n", age, this->name);
	return 40;
}
int main() {
	CLS 	obj;
	B       obj2;
	CLS2	obj3;
	int 	prt=20;


	obj.ag=10;
	obj.name=40;
	obj.print(prt, 30);
}
