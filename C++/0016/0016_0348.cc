

#include <stdio.h>

class A{
	public:
		int ag;
};

class B:virtual A{
	public:
		int ag1;
};

class C:virtual A{
	public:
		int ag1;
};

class CLS:public B,public C {
	public:
		int ag1;
};
int main() {
	CLS	obj;


	obj.ag1=30;

        puts("ok");
}
