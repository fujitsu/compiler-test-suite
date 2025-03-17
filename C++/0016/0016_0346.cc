#include <stdio.h>

class A{
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

int CLS::print(int a, int b) {
	age=10;
	this->name=a*b;
	printf("age : %d, this->name : %d\n", age, this->name);
	return 40;
}
int main() {
	CLS 	obj;

	obj.ag=10;
	obj.A::ag=11;
	obj.print(10, 20);
}
