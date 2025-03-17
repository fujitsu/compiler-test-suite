

#include <stdio.h>

class A{
	public:
		int a1;
};

class B:public A{
	public:
		int b1;
};

class CLS:public B{
    public:
	int age;
	int name;
	B   mem;
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
	B       obj2;
	int 	prt=20;

	obj.name=40;
	obj.print(prt, 30);
}
